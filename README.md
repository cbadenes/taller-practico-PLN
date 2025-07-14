# Taller RAG: Recuperación, Aumento y Generación con Modelos Locales

Este entorno está diseñado para ayudarte a comprender y construir un sistema RAG (Retrieval-Augmented Generation) utilizando tus propios apuntes. Usaremos:

- **Weaviate** como base de datos vectorial para almacenar e indexar información.
- **Ollama** para ejecutar modelos de lenguaje de manera local.
- **Jupyter Notebook** para interactuar y programar cada fase de forma didáctica.

---

## 1. Requisitos previos

Antes de comenzar, asegúrate de tener instalado en tu equipo:

- Docker (https://www.docker.com/products/docker-desktop/)
- Docker Compose (viene incluido en Docker Desktop)
- Git (opcional, si quieres clonar el repositorio)

---

## 2. Descargar o clonar este entorno

Puedes descargar los archivos desde el aula virtual o clonarlos con Git:

```bash
git clone https://github.com/cbadenes/taller-practico-PLN.git
cd taller-practico-PLN
```

## 3. Lanzar el entorno con Docker Compose
Dentro del directorio donde están los archivos docker-compose.yml y Dockerfile, ejecuta:

```bash
docker compose up --build
```

Esto lanzará:
- Weaviate (base de datos vectorial)
- Ollama (modelo local)
- Jupyter Notebook (interfaz de programación)

La primera vez puede tardar unos minutos.


## 4. Acceder al entorno de trabajo
Una vez esté todo funcionando:

Abre tu navegador en: http://localhost:8888

Comprueba que puedes crear un notebook correctamente.

## 5. Cargar el modelo en Ollama
Antes de poder generar texto con el modelo, necesitas descargarlo dentro del contenedor de Ollama.

Abre una terminal con:

```bash
docker exec -it rag-ollama bash
```

Dentro del contenedor, descarga un modelo compatible. Por ejemplo, para gemma:2b:

```bash
ollama pull gemma:2b
```

Este paso se hace solo una vez y puede tardar según tu conexión.

Otros modelos recomendados:
- tinyllama
- phi
- llama2:7b (más pesado)
- mistral (si tienes un equipo más potente)

