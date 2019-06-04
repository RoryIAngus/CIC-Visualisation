#!/bin/bash

#created by Rory Angus - 14JAN19
# helpful scripts to do with Anaconda

######## UPDATE CONDA ########
# do this first
conda update conda
# this can down grade conda packages that were just updated
conda update anaconda
# this updates the packages again
conda update conda





######## CLONE ########
# create a clone of base into a new env called cufflinks
conda create --name cufflinks --clone base
conda activate cufflinks
# install cufflinks - plotly is already installed
conda install -c conda-forge cufflinks-py
# back up cufflinks env settings
conda env export > /home/ec2-user/RoryWorking/env_config/cufflinks_environment.yml



######## BASE ########
# this command updates the notebooks to allow any environment to be picked from the main window.
# install this into base before anything else
conda install nb_conda

######## Package Installs ########
conda install -c conda-forge jupyter_contrib_nbextensions
conda install -c conda-forge ipywidgets
