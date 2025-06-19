# Taller Práctico PLN

Este proyecto permite realizar búsquedas semánticas sobre documentos de texto utilizando modelos de lenguaje, facilitando la exploración y recuperación de fragmentos relevantes de información.

## Requisitos

- Python 3.9
- Git
- Visual Studio Code (opcional pero recomendado)

## Instalación de Python

### Windows

1. Descarga Python 3.9 desde [https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/)
2. Durante la instalación, marca la opción **"Add Python to PATH"**.
3. Finaliza la instalación y verifica desde una terminal (CMD o PowerShell):

   ```bash
   python --version
   ```

### macOS

1. Se recomienda instalar Python usando Homebrew:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   brew install python@3.10
   ```

2. Verifica la instalación:
   ```bash
   python3 --version
   ```

### Linux (Ubuntu/Debian)

1. Instala Python con:
   ```bash
   sudo apt update
   sudo apt install python3.9 python3.9-venv python3-pip
   ```

2. Verifica la instalación:
   ```bash
   python3 --version
   ```

## Instalación del proyecto

1. **Clonar el repositorio**

   ```bash
   git clone https://github.com/cbadenes/taller-practico-PLN.git
   cd taller-practico-pln
   ```

2. **Crear y activar un entorno virtual**

   En Linux/macOS:

   ```bash
   python3 -m venv .venv
   source venv/bin/activate
   ```

   En Windows:

   ```powershell
   python -m venv .venv
   .\.venv\Scripts\activate
   ```

3. **Instalar las dependencias**

   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

## Configuración recomendada en Visual Studio Code

Para trabajar de forma eficiente en este proyecto, se recomienda utilizar Visual Studio Code con las siguientes extensiones y configuraciones:

### Extensiones sugeridas

- Python
- Jupyter
- Pylance
- IntelliCode
- **GitHub Copilot** (para sugerencias de código asistidas por IA)
- **CodeGPT** o **Continue** (opcional, para asistencia contextual más profunda)

### Configuración del entorno

Asegúrate de seleccionar el entorno virtual creado como intérprete de Python en VS Code. Esto se puede hacer desde la paleta de comandos (`Ctrl+Shift+P`) seleccionando:

```
Python: Select Interpreter
```

Y eligiendo la ruta correspondiente a `venv`.

### Asistencia con IA

- Si usas GitHub Copilot, asegúrate de haber iniciado sesión con tu cuenta de GitHub con acceso a Copilot.
- Si prefieres una herramienta alternativa como **Continue**, puedes configurarla para trabajar sobre tus scripts y notebooks proporcionando respuestas contextualizadas.

## Estructura del proyecto

- `notebooks/`: Cuadernos de exploración de datos y pruebas.
- `src/`: Código fuente principal para indexación y búsqueda.
- `data/`: Directorios de entrada y salida de documentos y vectores.
