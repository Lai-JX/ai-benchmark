FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN pip install --upgrade pip

RUN apt-get -y install git
RUN git clone https://github.com/shiyoubun/ai-benchmark.git

WORKDIR ai-benchmark
RUN pip install -e .

#RUN chmod a+x bin/ai-benchmark

