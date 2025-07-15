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

# Descargar el modelo "all-MiniLM-L6-v2" en la capa de build
RUN python -c "from sentence_transformers import SentenceTransformer; SentenceTransformer('all-MiniLM-L6-v2')"

# Dar permisos al usuario jovyan para escribir en la caché
RUN chown -R jovyan:users /home/jovyan/.cache

USER jovyan
WORKDIR /home/jovyan/work
