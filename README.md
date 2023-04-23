# bark-webui

see also: https://github.com/makawy7/bark-webui

## Usage

```
git clone https://github.com/iuill/bark-webui
cd bark-webui
docker build -t bark-webui .
docker run --gpus all -it -p 7860:7860 -v ${pwd}/bark-webui/.cache:/bark-webui/.cache bark-webui
```
