---
author: J. Salmon
title: Quiz
output: html_document
---
# Quiz:  pool de questions


## Général:

1. Que vaut $Cov(X+\mu)$ pour tout $\mu \in \mathbb{R}^p$ déterministe, et tout vecteur aléatoire $X \in \mathbb{R}^p$?

1. Que vaut $Cov(AX)$, pour toute matrice $A \in \mathbb{R}^{m\times p}$ et tout vecteur aléatoire $X \in \mathbb{R}^p$?

1. Quel est un modèle naturel pour "un lancer de dé"?

1. Que vaut le biais de $\displaystyle\frac{1}{n} \sum_{i=1}^n (y_i - \overline{y}_n)^2$ ($\overline{y}_n$ est la moyenne empirique) pour des $y_i$ i.i.d, gaussiens, centrés et de variance $\sigma^2$?

1. On suppose que l'on observe $y_1,\dots,y_n$, des variables réelles i.i.d., gaussiennes, centrées et de variance $\sigma^2$.
Quel est le risque quadratique de l'estimateur $\displaystyle\frac{1}{n} \sum_{i=1}^n (y_i - \overline{y}_n)^2$ de
 $\sigma^2$ ($\overline{y}_n$ est la moyenne empirique)?

1. Quelle est la projection du vecteur $\mathbf{y} \in \mathbb{R}^n$ sur ${\rm Vect}(1_n)$, avec $1_n =(1,\dots,1)^\top \in \mathbb{R}^n$?

1. Quels sont les vecteurs $\mathbf{y} \in \mathbb{R}^n$ tels que ${\rm var}_n(\mathbf{y})=0$ (${\rm var}_n$ est la variance empirique)?

## Moindres carrés unidimensionnels: on observe $\mathbf{y}=(y_1,\dots,y_n)^\top$ et $\mathbf{x}=(x_1,\dots,x_n)^\top$

1. La fonction $(\theta_0,\theta_1) \to \frac{1}{2} \sum_{i=1}^n (y_i-\theta_0 - \theta_1 x_i)^2$ est elle convexe ou concave?

1. Donner la formule $(\hat\theta_0,\hat\theta_1)$ des estimateurs des moindres carrés où $\hat\theta_0$ correspond au coefficient des constantes et $\hat\theta_1$ correspond à l'influence de $\mathbf{x}$ sur $\mathbf{y}$. On les exprimera en fonction des $x_i,y_i,\overline{x}_n,\overline{y}_n$



## Moindres carrés: $\mathbf{y}=(y_1,\dots,y_n)^\top$ et $X\in \mathbb{R}^{n \times p}$

1. Écrire un pseudo-code de descente de gradient pour résoudre le problème des moindres carrés.

1. Pour une matrice $X \in \mathbb{R}^{n \times p}$, que vaut ${\rm Ker}(X^\top X)$?

1. Si la matrice $X \in \mathbb{R}^{n \times p}$ est de plein rang, donner une formule exacte de l'estimateur des moindres carrés.

1. Si la matrice $X \in \mathbb{R}^{n \times p}$ est de plein rang, donner la matrice de covariance de l'estimateur des moindres carrés (dans l’hypothèse d'un bruit $\epsilon=\mathbf{y}-X\theta^*$ centré et de matrice de covariance $\sigma^2 {\rm Id}_n$).

1.  Donner la formulation de la pseudo inverse si la SVD de $X$ peut s’écrire
$X= \sum_{i=1}^r s_i \mathbf{v}_i \mathbf{u}_i^\top$.

1.  Donner une formule explicite du problème $
{\rm arg} \displaystyle\min_{\theta} \frac{1}{2}  (\mathbf{y} -X \theta)^{\top} \Omega (\mathbf{y} -X \theta)$ pour une matrice $\Omega={\rm diag}(w_1,\dots, w_n)$ définie positive.



## Ridge:

On note $\hat \theta = {\rm arg} \displaystyle\min_{\theta} \frac{1}{2}\| \mathbf{y} -X \theta \|_2^2+ \frac{\lambda}{2}\|\theta\|_2^2$ l'estimateur ridge.

1. Donner une formule explicite pour l'estimateur Ridge en fonction de $y$ et $\lambda$ quand $X={\rm Id}_n$.

1. Donner une formule explicite pour l'estimateur Ridge en fonction de $X$, $y$ et $\lambda$.

1. Donner la variance de l'estimateur Ridge sous l’hypothèse que le bruit $\mathbf{y} -X \theta^*$ est centré et de variance $\sigma^2 {\rm Id}_n$.

1. Donner une formule explicite pour l'estimateur Ridge généralisé:
$\hat \theta = {\rm arg} \displaystyle\min_{\theta} \frac{1}{2}\| \mathbf{y} -X \theta \|_2^2+ \frac{\lambda}{2}\|D\theta\|_2^2$,
en fonction de $X$, $y$, $D\in \mathbb{R}^{p \times p}$ et $\lambda$.


## Lasso:
1. Calculer $ \eta_{\lambda}(Z)=\displaystyle{\rm arg} \displaystyle\min_{x\in \mathbb{R}} x \mapsto \frac{1}{2}(z - x)^2 + \lambda |x|$ en fonction du signe de $x$ et de la partie positive $(\cdot)_+$

1. Donner en tout point la sous-différentielle de la fonction réelle $x\mapsto (x)_+=\max(x,0)$.

1. Donner l’étape de mise à jour principale en descente par coordonnée pour résoudre le problème de l'*Elastic Net*:
$ \hat\theta_\lambda= {\rm arg} \displaystyle\min_{\theta \in \mathbb{R}^p } \left[\frac{1}{2}\| \mathbf{y} -X \theta \|_2^2 +\lambda \left( \alpha \|\theta\|_1 + (1-\alpha) \frac{\|\theta\|_2^2}{2} \right) \right]$.

1. Donner l’étape de mise à jour principale en descente par coordonnée pour résoudre le problème du *Lasso Positif*:
$ \hat\theta_\lambda= {\rm arg} \displaystyle\min_{\theta \in \mathbb{R}_+^p } \frac{1}{2}\| \mathbf{y} -X \theta \|_2^2 +\lambda  \|\theta\|_1$.

1. On suppose que l'on dispose d'un solveur ${\rm Lasso}(X,y,\lambda)$ qui résout le problème du Lasso
$ \hat\theta_\lambda= {\rm arg} \displaystyle\min_{\theta \in \mathbb{R}^p} \frac{1}{2}\| \mathbf{y} -X \theta \|_2^2 +\lambda  \|\theta\|_1$. En utilisant ce solveur comment résoudre le problème suivant:
$ \hat\theta_\lambda= {\rm arg} \displaystyle\min_{\theta \in \mathbb{R}^p} \frac{1}{2}\| \mathbf{y} -X \theta \|_2^2 +\lambda  \sum_{j=1}^p w_j |\theta_j|$, pour des $w_j \geq 0$?

## ACP/SVD

1. Que vaut $\begin{cases}
\displaystyle\max_{u \in \mathbb{R}^n, v \in \mathbb{R}^p} u^\top X v \\
\text{s.c. } \|u\|_2^2=1  \text{ et } \|v\|_2^2=1
\end{cases}$?

## Test:

1. Pour des $X_1,\dots, X_n$ identiquement distribuées à valeur dans $\{0,1\}$, décrire une procédure de test de l'hypothèse $p = P(X_1=1) = 1/2$ contre son contraire.

1. Soient $X_1,\dots, X_n$ des variables aléatoires i.i.d selon des lois gaussiennes de moyenne $\mu$ et de variance connue $\sigma$, *i.e.,*   $X_i \sim \mathcal{N}(0,\sigma^2)$. Décrire une procédure de test de l'hypothèse $\mu = 1$ contre son contraire.

1. Soient $X_1,\dots, X_n$ des variables aléatoires indépendantes et distribuées selon des lois gaussiennes de moyenne $\mu$ et de variances connues $\sigma_i^2$, *i.e.,*   $X_i \sim \mathcal{N}(0,\sigma_i^2)$. Décrire une procédure de test de l'hypothèse $\mu = 1$ contre son contraire.


## Bootstrap

1. Soient $X_1,\dots, X_n$ des variables aléatoires i.i.d selon des lois gaussiennes de moyenne $\mu$ et de variance connue $\sigma$, *i.e.,*  $X_i \sim \mathcal{N}(0,\sigma^2)$. Écrire un pseudo code de bootstrap pour le test sur la moyenne $\mu=1$.

1. Soient $X_1,\dots, X_n$ des variables aléatoires i.i.d et $w_1,\dots,w_n$ une suite de variables i.i.d. de moyenne $1$ et de variance $1$. A l'aide des $X_i$ et des $w_i$ construire un intervalle de confiance à 99% pour la quantité $\mathbb{P}( X_1 \geq 10 )$.

1. Proposer une procédure bootstrap pour estimer l’écart quadratique moyen de la méthode des moindres carrées dans le cas d'une régression linéaire.
