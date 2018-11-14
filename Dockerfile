FROM python:3.6-slim

RUN mkdir conversion
COPY requirements.txt conversion/requirements.txt
COPY scripts/ conversion/scripts/
WORKDIR /conversion

# Install Python Requirements
RUN apt-get update && apt-get install -y --no-install-recommends libgtk2.0-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8888

# Launch Jupyter notebook
CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--no-browser"]