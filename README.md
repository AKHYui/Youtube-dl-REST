## Docker版安装
* 安装方法
```
mkdir dockerfile && cd dockerfile
wget https://assets.hyui.xyz/file/AkhyuiStorage/DockerFiles/Youtube-dl-REST/dockerfile
docker build -t rest:v1 .
```
* 使用方法(示例)
```
docker run -idt --name rest -p 80:80 rest-node:v1
```