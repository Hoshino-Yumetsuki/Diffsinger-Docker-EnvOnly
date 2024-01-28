FROM condaforge/mambaforge
RUN apt-get upgrade
RUN apt-get install git -y
WORKDIR /content
RUN git clone https://github.com/openvpi/DiffSinger.git
RUN ./DiffSinger
RUN conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y
RUN pip install pyproject
RUN pip install -r requirements.txt
RUN pip install jupyter
EXPOSE 8888
CMD [ "jupyter-lab" ]