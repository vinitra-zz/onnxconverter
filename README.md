# About

This is a standalone conversion tool aimed at helping developers convert from models to ONNX format. The tool allows easily uploads and conversions of models in a pre-configured environment via Jupyter Notebooks.

You can use a prebuilt Docker image of this converter [here](https://hub.docker.com/r/microsoft/onnxconverter/)

# Supported Models
- Caffe
- Keras
- CoreML

# Usage

1. Ensure that you are using Docker for Linux containers if on Windows.

2. Navigate to the onnxconverter folder and Docker build the image
    - `docker build -t onnxconverter .`

3. Start the Docker container
    - `docker run -p 8888:8888 onnxconverter`

4. Run `docker ps` in a terminal session to get the container name and verify your container is successfully running

5. Navigate to the url that the Jupyter Notebook is running on and use the provided token in the console. 
    - Should be in the form: `http://127.0.0.1:8888/?token=RANDOMSTRINGHERE`  

6. Either upload a file using [the Jupyter Notebook button](https://stackoverflow.com/questions/29968829/load-local-data-into-ipython-notebook-server) 
    or docker cp the required model files to the container. You can also copy a whole folder using docker.
    - `docker cp PATH_TO_FILE_ON_YOUR_PC NAME_OF_CONTAINER:/conversion/scripts/NAME_OF_FILE_ON_CONTAINER`

7. Navigate to the scripts folder in the container Jupyter Notebooks and edit the appropriate notebook to convert your model to ONNX


# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
