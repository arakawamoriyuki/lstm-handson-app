# Python 3.5.2 :: Anaconda 4.2.0 (64-bit)
FROM continuumio/anaconda3:4.2.0

RUN useradd -m python_user
WORKDIR /home/python_user

RUN conda install -y -c conda-forge tensorflow==1.4.0
RUN conda install -y pydot==1.2.3
RUN conda install -y graphviz==2.38.0
RUN conda install -y gensim==3.4.0
RUN pip install pybitflyer==0.1.9

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y mecab
RUN apt-get install -y python-mecab
RUN apt-get install -y libmecab-dev
RUN apt-get install -y mecab-ipadic
RUN apt-get install -y mecab-ipadic-utf8
RUN pip install mecab-python3==0.7

ADD ./main.ipynb /home/python_user/main.ipynb
RUN chown python_user -R /home/python_user/main.ipynb

USER python_user

# jupiter notebook
EXPOSE 8888
ENTRYPOINT ["/bin/sh", "-c", "jupyter notebook --ip=0.0.0.0 --port=8888"]