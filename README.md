# elalas-jsm25
Code for Evaluating LLM Applications Like a Statistician CE course at JSM 2025

# Preparation

## Docker

I have included a dockerfile to make it easy to reproduce the runs we'll see in the course. To run them, you will need to install Docker Desktop. 

I reccomend using the included docker-compose.yml to easily stand up the container. I use VS Code with the Docker plugin, which allows you to easily run the docker-compose. 

Once the container is running, it's hosting a jupyter server. In VS code (or another IDE), open one of the .ipynb files and use your IDE to connect to the jupyter server at localhost:8888. Otherwise, you can simply point your browser at the same address to see the code.

If you would prefer not to use Docker or cannot, you can use UV or pip to install the included requirements file, then either run the jupyter server and connect via an IDE or instead just run jupyter notebook. 

The container will take ~10 min to build on good wifi

## PyPi

Over the course of preparing this code, I added a lot of extraneous packages. I have tried to slim the required core down to `requirements.txt` and `requirements_w_versions.txt` (includes versions) that will give you the best approximation of my environment. 

If you cannot get the slimmed down versions running, `requirements_full_freeze.txt` will give you an exact copy of all packages in my container

## OpenAI API

To run the code, you will need an OpenAI API key from setting up an account at https://openai.com/api/

You will need to supply a payment method and add money to your account to do so. However, it should be relativly simple to 

# Files

`figures.ipynb` gets some of the numbers used in the course handout. It may be of interest to view, but is fiarly messy

`haystack.ipynb` implements a RAG pipeline with Haystack and is intended to give you a headstart in trying out the ideas we covered in the CE


