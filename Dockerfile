
# datapy:2.7
#
# comes with SciPy, Sklearn, Numpy, and NLTK

FROM ubuntu:14.04

RUN apt-get update -qq && apt-get install -y python python-pip python-dev

RUN apt-get install -y python-numpy python-scipy python-matplotlib \
	ipython ipython-notebook python-pandas python-sympy \
	python-nose --no-install-recommends

RUN apt-get install -y build-essential python-setuptools \
	libatlas-dev libatlas3gf-base --no-install-recommends

RUN pip install -U scikit-learn
RUN pip install -U nltk