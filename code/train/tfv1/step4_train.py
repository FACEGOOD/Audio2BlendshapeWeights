# Copyright 2021 The FACEGOOD Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

import tensorflow as tf
import numpy as np
from model_paper import net
from model_paper import losses
import os
from tensorflow.python.framework import graph_util
# from tensorflow.python.tools import freeze_graph
import shutil
import time

tf.set_random_seed(123)

# 将tf日志信息输出到屏幕
# tf.logging.set_verbosity(tf.logging.INFO)
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

# 重置计算图
tf.reset_default_graph()

# 设置参数
FLAGS = tf.app.flags.FLAGS
tf.app.flags.DEFINE_integer('epochs', 2, 'Number of steps to run trainer') #100
tf.app.flags.DEFINE_string('dataSet', 'dataSet1', 'dataSet name')

epoch = FLAGS.epochs
dataSet = FLAGS.dataSet

project_dir = r'D:\voice2face\shirley_1119'
data_dir = os.path.join(project_dir, dataSet)

# 加载数据
x_train = np.load(os.path.join(data_dir, 'train_data.npy'))
y_train = np.load(os.path.join(data_dir, 'train_label_var.npy'))
x_val = np.load(os.path.join(data_dir, 'val_data.npy'))
y_val = np.load(os.path.join(data_dir, 'val_label_var.npy'))
print(x_train.shape)
print(y_train.shape)
print(x_val.shape)
print(y_val.shape)

# Training Parameters
batch_size = 128
starter_learning_rate = 0.001
output_size = y_val.shape[1]


def train():
    tf.set_random_seed(123) # 设置seed

    # 配置路径
    logs_dirs = os.path.join(project_dir, 'logs')    # log
    logs_dir = os.path.join(logs_dirs, '0317_' + dataSet + '_var_epoch' + str(epoch) + '_' + str(y_train.shape[0]))
    input_checkpoint_path = os.path.join(logs_dir, 'model.ckpt')    # check point
    pb_dir = os.path.join(project_dir, 'pb')     # 模型
    out_pb_path = os.path.join(pb_dir, '0317_' + dataSet + '_var_epoch' + str(epoch) + '_' + str(y_train.shape[0]) + '.pb')   # 输出模型

    # 创建logs目录和pb目录
    if not os.path.exists(logs_dirs):
        os.mkdir(logs_dirs)
    if os.path.exists(logs_dir):
        shutil.rmtree(logs_dir)
        os.mkdir(logs_dir) 
    if not os.path.exists(pb_dir):
        os.mkdir(pb_dir)

    # op 把需要的记录数据写入文件
    train_loss = tf.summary.FileWriter(os.path.join(logs_dir, 'train_loss'), graph=tf.get_default_graph())
    val_loss = tf.summary.FileWriter(os.path.join(logs_dir, 'val_loss'), graph=tf.get_default_graph())

    # 占位符
    keep_pro = tf.placeholder(tf.float32)   # dropout机制使用
    data = tf.placeholder(shape=[None, x_val.shape[1], x_val.shape[2], x_val.shape[3]], dtype=tf.float32)
    label = tf.placeholder(shape=[None, output_size], dtype=tf.float32)
    # is_training = tf.placeholder(tf.bool)

    output, emotion_input = net(data, output_size, keep_pro)  # 输入网络
    # l2_loss = tf.losses.get_regularization_loss()
    loss0 = losses(output, label, emotion_input)    # 计算 loss
    tf.summary.scalar('loss0', loss0)   # 创建 summary 来观察损失值
    # loss = loss0 + l2_loss
    # tf.summary.scalar('loss',loss)# 创建summary来观察损失值

    global_steps = tf.Variable(0, trainable=False)
    # 指数衰减法训练
    learning_rate = tf.train.exponential_decay(starter_learning_rate, global_steps, x_train.shape[0]//batch_size*10,
                                               0.98, staircase=True)
    # 通知Tensorflow在训练时要更新均值和方差的分布
    with tf.control_dependencies(tf.get_collection(tf.GraphKeys.UPDATE_OPS)):
        my_opt = tf.train.AdamOptimizer(learning_rate)  # 设置优化器
        train_step = my_opt.minimize(loss0, global_step=global_steps)   # 目标，使得损失函数达到最小值
    summary_op = tf.summary.merge_all()

    # 初始化变量
    gpu_options = tf.GPUOptions(per_process_gpu_memory_fraction=0.8)
    sess = tf.Session(config=tf.ConfigProto(gpu_options=gpu_options))   # 创建一个 session
    # sess = tf.Session(config=tf.ConfigProto(log_device_placement=True)) #使用 GPU
    # train_writer = tf.summary.FileWriter(logs_dir, sess.graph)

    saver = tf.train.Saver()
    sess.run(tf.global_variables_initializer())

    # 迭代训练
    for i in range(epoch):
        time1 = time.time()
        shuffle_indices = np.random.permutation(len(x_train))   # 随机索引数据

        # 将数据划分为 batch
        for j in range(x_train.shape[0]//batch_size):
            index = shuffle_indices[batch_size * j: batch_size * (j + 1)]
            train_data, train_label = x_train[index], y_train[index]
            train_op = sess.run(train_step, feed_dict={data: train_data, label: train_label, keep_pro: 0.5})

        train_random_index = np.random.choice(x_train.shape[0], 1200, False)
        # val_random_index = np.random.choice(x_val.shape[0],1000,False)

        # for train_loss
        # summary = sess.run(loss, feed_dict={data: x_train[:360], label: y_train[:360], keep_pro: 1})
        summary = sess.run(summary_op, feed_dict={data: x_train[train_random_index],
                                                  label: y_train[train_random_index],
                                                  keep_pro: 1})
        train_loss.add_summary(summary, i)
        train_loss.flush()

        # for val_loss
        # summary = sess.run(loss, feed_dict={data: x_val[:360], label: y_val[:360], keep_pro: 1})
        summary = sess.run(summary_op, feed_dict={data: x_val, label: y_val, keep_pro: 1})
        val_loss.add_summary(summary, i)
        val_loss.flush()

        train_loss0 = sess.run(loss0, feed_dict={data: x_train[train_random_index],
                                                 label: y_train[train_random_index],
                                                 keep_pro: 1})
        val_loss0 = sess.run(loss0, feed_dict={data: x_val, label: y_val, keep_pro: 1})

        # 输出训练信息
        print('epoch: ' + str(i+1) + ', train_loss: ' + str(train_loss0) +
              ', val_loss: ' + str(val_loss0), 'time: ' + str(time.time()-time1))

        # train_loss1 = sess.run(loss, feed_dict={data: x_train[:1200], label: y_train[:1200], keep_pro: 1})
        # val_loss1 = sess.run(loss, feed_dict={data: x_val, label: y_val, keep_pro: 1})
        # print('epoch: ' + str(i+1) + ', train_loss: ' + str(train_loss1) + ', val_loss: ' + str(val_loss1))
        # print('learning_rate: ', sess.run(learning_rate))
        # print('global_steps: ', sess.run(global_steps))

        # 保存check point
        checkpoint_path = os.path.join(logs_dir, 'model.ckpt')
        saver.save(sess, checkpoint_path)       
    sess.close() 

# def freeze_graph(input_checkpoint,output_graph):
    # 指定输出的节点名称,该节点名称必须是原模型中存在的节点
    output_node_names = "dense_1/BiasAdd"
    saver = tf.train.import_meta_graph(input_checkpoint_path + '.meta', clear_devices=True)
    graph = tf.get_default_graph()  # 获得默认的图
    input_graph_def = graph.as_graph_def()  # 返回一个序列化的图代表当前的图
 
    with tf.Session() as sess:
        saver.restore(sess, input_checkpoint_path)  # 恢复图并得到数据
        output_graph_def = graph_util.convert_variables_to_constants(  # 模型持久化，将变量值固定
            sess=sess,
            input_graph_def=input_graph_def,    # 等于 sess.graph_def
            output_node_names=output_node_names.split(","))     # 如果有多个输出节点，以逗号隔开
 
        with tf.gfile.GFile(out_pb_path, "wb") as f:    # 保存模型
            f.write(output_graph_def.SerializeToString())   # 序列化输出
        print("%d ops in the final graph." % len(output_graph_def.node))    # 得到当前图有几个操作节点


if __name__ == '__main__':
    # if tf.gfile.Exists(FLAGS.logs_dir):
    #     tf.gfile.DeleteRecursively(FLAGS.logs_dir)
    # tf.gfile.MakeDirs(FLAGS.logs_dir)

    train()
    # freeze_graph(input_checkpoint, out_pb_path)
