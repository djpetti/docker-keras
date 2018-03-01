FROM tensorflow/tensorflow:latest-devel-gpu
MAINTAINER Daniel Petti

RUN apt-get update && apt-get install -y python-opencv graphviz wget

# Grab and install Keras.
RUN wget -O keras.zip https://github.com/keras-team/keras/archive/2.1.4.zip
RUN unzip -d keras keras.zip
RUN cd keras/* && python setup.py install

# Install packages that we need to run code.
RUN pip install pyaml pydot-ng h5py
