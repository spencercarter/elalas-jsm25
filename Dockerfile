FROM python:3.13.5-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    liblapack-dev \
    build-essential \
    graphviz \
    && rm -rf /var/lib/apt/lists/*

# Or use one of the other requirements files
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Expose the port Jupyter uses
EXPOSE 8888

# Run Jupyter notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]