# Rendre un DM et corriger des DMs de statistiques proposition

## Environnement virtuel en python

L'objectif est de fournir son environnement python en plus de son ipython notebook lors d'un rendu en statistiques. Afin que le correcteur puisse executer votre rendu facilement.  

Python fournit un systeme d'environnement virtuel (d'ailleurs c'est qu'utilise conda pour fonctionner) pour faire cela:
**virtualenv**.  

Bien sûr, on pourrait utiliser une machine virtuelle ou un container pour fournir aussi le système d'exploitation (avec **virtualbox** ou **docker**). Mais python est un language multiplateforme (s'exécutant en particulier sous MAC OS, Linux et Windows), ceci n'est pas spécialement utile. Ici il s'agit plus de gérer les différences de versions d'interprèteur python et/ou de bibilothèques tierces: 

References:  
-  
-  
-  

#### Rendre votre travail

Voici ce qui pourrait être rendu:
- **dmX.ipynb** : votre ipython notebook pour le dm numero X.  
- **requirements.txt** : la liste des bibliotheques tierces que vous utilisez pour le executer le ipython notebook.
- **virtualenv-python.sh** : un script qui construit votre environnement virtuel ou vous specifiez votre version de python et votre nom d'environment. 

Il faut suivre ces etapes pour le rendu:

1) Construire la liste de vos bibliotheques tierces. 

~~~
$ pip freeze > requirements.txt
~~~

2) Remplir le script `virtualenv-python.sh`:

~~~
#!/bin/bash

# Create virtual environment for python

PYTHON_VERSION="python3.5"
ENV_NAME="glegoux"

echo "*** Create directory python-env/" && \
pwd && mkdir -v -p python-env/ && \
echo "*** Create virtual environment" && \
cd python-env/ && pwd && \
virtualenv -v "${ENV_NAME}" -p "${PYTHON_VERSION}" && \
cd "${ENV_NAME}" && pwd && \
echo "*** Go to virtual environment" && \
source bin/activate && \
cd ../.. && pwd && \
echo "*** Install third library in your virtual environement" && \
pip -v install -r requirements.txt && \
echo "*** Launch jupyter notebook" && \
jupyter notebook
~~~

en remplacant `python3.5` avec votre version de python, et `glegoux` par votre nom d'environment (si vous voulez restez anonyme mettez un autre identifiant).

3) Lancer votre script ` virtualenv-python.sh` et essayer de lire et d'executer votre notebook pour verifier que tout fonctionne correctement.

#### Corriger le travail de quelqu'un d'autre
<hr>
