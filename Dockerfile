FROM ubuntu:20.04 
RUN apt update
RUN apt install -y python2 curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python2 get-pip.py
RUN pip install jupyter
RUN pip install pandas scikit-learn numpy matplotlib

RUN pip install "tensorflow>=1.15,<2.0"
RUN pip install --upgrade tensorflow-hub
WORKDIR /home/
COPY ./start_server.sh .start_server.sh
CMD ./.start_server.sh