FROM jupyter/scipy-notebook:latest

USER root

RUN apt-get update && apt-get install -y git curl poppler-utils

# Python libs
RUN pip install \
    weaviate-client \
    sentence-transformers \
    faiss-cpu \
    chromadb \
    gradio \
    openai \
    pypdf \
    langchain \
    matplotlib \
    pandas \
    requests

    
USER jovyan
WORKDIR /home/jovyan/work
