FROM tensorflow/tensorflow:2.7.1-gpu-jupyter
RUN apt-get update
RUN pip install pandas scikit-learn numpy matplotlib
RUN pip install --upgrade tensorflow-hub jupyterthemes transformers dataset
WORKDIR /home/
COPY ./start_server.sh .start_server.sh
CMD ./.start_server.sh