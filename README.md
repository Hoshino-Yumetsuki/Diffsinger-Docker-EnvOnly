# 在本地使用即开即用的Docker环境训练Diffsinger模型

## Docker内环境

```
python 3.11
cuda 12.1
pytorch 2.1.2
jupyterlab
requirements.txt
```

## 准备工作

- 安装Docker
- 安装Cuda
- 安装Wsl发行版
- 拉取镜像

## 开始训练

- 找到一个文件夹，并从github clone Diffsinger仓库
- 放置训练Diffsinger模型所需的文件
- 启动容器并将Diffsinger文件夹挂载到镜像中（在您有GPU情况下请直接复制命令，如果没有则将命令中关于gpu的部分删除）
 ```
 docker run -it --gpus all -e NVIDIA_DRIVER_CAPABILITIES=all -e NVIDIA_VISIBLE_DEVICES=all -v <local path>/Diffsinger:/content/Diffsinger diffsinger-env-only
 ```
- 从Docker中找到连接Jupyter Lab的连接方式，然后进入，即可按照官方文档操作并开始训练