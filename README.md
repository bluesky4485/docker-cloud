# 模块组成

* alpine 最新版为基础包，目前是3.7
* consul 1.0.6 注册中心监控
* java8


# 开始使用

* `git clone https://github.com/bluesky4485/docker-cloud.git`
* `cd docker-cloud && docker-compose build && docker-compose up -d`

# 镜像说明

## java8
java8镜像里面只包含了jdk，除了用来运行hystrix-dashboard、motan-manager、zipkin-server之外，后续jboot打包的jar，也可以使用这个镜像进行执行，方便的模拟分布式服务提供者的情况。

## [consul](https://store.docker.com/images/consul)
consul的使用说明请参考官方镜像的使用说明，这里只是将dockerfile拷贝了一份而已，统一依赖修改了镜像源的alpine镜像而已。
默认只暴露了ui界面的端口，适合本地开发，如果需要加入到别人的集群中，则需要在docker-compose.yml将其他端口一并映射出来。端口部分修改在consul的ports节点下面。

# 疑问与解答 

* Windows下有一些问题，请参考【[windows用户填坑建议](windows用户填坑建议.md)】,`如若不注意，可能会导致容器启动不了的问题`。

* 其他有关docker基本概念和命令操作，请参考【[docker基础概念和命令操作](docker基础概念和命令操作.md)】。
