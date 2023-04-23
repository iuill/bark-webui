# bark-webui-docker

see also: https://github.com/makawy7/bark-webui

## Usage

```
git clone https://github.com/iuill/bark-webui-docker
cd bark-webui-docker
docker build -t bark-webui-docker .
docker run --gpus all -it -p 7860:7860 -v ${pwd}/.cache:/.cache bark-webui-docker
```
