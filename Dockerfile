FROM condaforge/mambaforge
RUN apt-get upgrade
WORKDIR /content
RUN pip install jupyter pyproject
RUN conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y
RUN curl -v -o requirements.txt https://raw.githubusercontent.com/openvpi/DiffSinger/main/requirements.txt
RUN pip install requirements.txt
RUN rm -rf ./requirements.txt
EXPOSE 8888
CMD [ "jupyter-lab" ]