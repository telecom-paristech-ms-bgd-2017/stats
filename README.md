# Rendre un DM et corriger des DMs de statistiques (proposition)

Le problème est le suivant: la personne que vous corrigez est en python 2 et vous en python 3. Il utilise la version 0.19.0 de pandas et vous la version 0.18.0. Comment faire ? Une solution proposée ici est d'utiliser les environnements virtuels de python.

# Prerequis

Il faut avoir installé `pip` et `virtualenv`.

# Environnement virtuel en python

L'objectif est de fournir son environnement python en plus de son ipython notebook lors d'un rendu. Afin que le correcteur puisse exécuter votre rendu facilement.  

Python fournit un système d'environnement virtuel pour faire cela: **virtualenv**. D'ailleurs, conda utilise cela pour fonctionner. 

Bien sûr, on pourrait utiliser une machine virtuelle ou un containeur pour fournir aussi le système d'exploitation (avec **virtualbox** ou **docker**). Mais python est un language multi-plateforme (s'exécutant en particulier sous MAC OS, Linux et Windows), ceci n'est pas spécialement utile. Ici il s'agit plus de gérer les différences de versions de l'interpréteur python et/ou de bibliothèques tierces. 

Références:
- https://virtualenv.pypa.io/en/stable/
- https://pip.pypa.io/en/stable/
- http://sametmax.com/les-environnement-virtuels-python-virtualenv-et-virtualenvwrapper/
- https://www.docker.com/
- https://www.virtualbox.org/

### Rendre votre travail

Voici ce qui pourrait être rendu :
- **dmX.ipynb** : votre ipython notebook pour le dm numero X.  
- **requirements.txt** : la liste des bibliothèques tierces que vous utilisez pour le exécuter le ipython notebook.
- **virtualenv-python.sh** : un script qui construit votre environnement virtuel où vous specifiez votre version de python et votre nom d'environment. 

Il faut suivre ces étapes pour le rendu :

1) Construire la liste de vos bibliotheques tierces : 

~~~
$ pip freeze > requirements.txt
~~~

2) Remplir le script `virtualenv-python.sh` :

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

en remplaçant `python3.5` avec votre version de python, et `glegoux` par votre nom d'environnement (si vous voulez rester anonyme mettez un autre identifiant \<id\>).

3) Lancer votre script `virtualenv-python.sh`, et essayer de lire et d'exécuter votre notebook pour vérifier que tout fonctionne correctement.

### Corriger le travail de quelqu'un d'autre

Il suffit d'exécuter le script `virtualenv-python.sh`. Si vous faites `Ctrl+C`, cela coupe le serveur jupyter. 

Si vous voulez revenir sur votre correction après l'avoir stoppée, il ne faut pas rejouer le script `virtualenv-python.sh`, car cela fait aussi l'installation. Il faut d'abord se connecter à l'environnement virtuel de la personne qui corrige avec:

~~~
$ source python-env/<id>/bin/activate
~~~

où \<id\> est l'identifiant de la personne que vous corrigez.

Puis exécuter dans cet environnement le serveur jupyter:

~~~
$ jupyter notebook
~~~

Pour sortir de l'environnement, il suffit de couper le serveur jupyter avec un `Ctrl+C` puis de faire:

~~~
$ deactivate
~~~

### Remarque

- Il faut exécuter le script `virtualenv-python.sh` dans le dossier courant.
- Il faut exécuter la commande `jupyter notebook` dans le dossier courant qui contient le notebook.
- Vous pouvez utiliser l'exemple dans le dossier `sample`, avec une simulation de rendu.
- Pour supprimer tout l'envrironnement généré, il suffit de supprimer le repertoire `python-env/`.
