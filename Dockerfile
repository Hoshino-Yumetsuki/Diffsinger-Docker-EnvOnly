FROM condaforge/mambaforge
RUN apt-get upgrade
RUN apt-get install git -y
WORKDIR /content
RUN git clone https://github.com/openvpi/DiffSinger.git
RUN pip install pyproject
RUN conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y
RUN pip install jupyter
RUN pip install -r /content/DiffSinger/requirements.txt
EXPOSE 8888
CMD [ "jupyter-lab" ]