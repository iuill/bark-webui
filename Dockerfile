FROM python:3.11.2-slim-bullseye

RUN apt update && apt install -y \
    curl \
    # iproute2 \
    git \
    gcc \
    g++ \
    cmake \
    libssl-dev \
    pkg-config \
    locales-all

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN pip install setuptools-rust transformers

ENV APP_PATH=/bark-webui
COPY ${PWD}/bark-webui $APP_PATH
WORKDIR  $APP_PATH

RUN pip install . && \
    pip install gradio

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ=Asia/Tokyo

ENV XDG_CACHE_HOME /.cache

CMD ["python", "webui.py"]
