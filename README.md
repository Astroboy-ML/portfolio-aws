# 🚀 Martin Languillé — Portfolio Cloud & AWS

> Portfolio professionnel conçu pour accompagner mon évolution vers des fonctions de Cloud Engineer puis AWS Solutions Architect.

🌐 Site : https://languille.site

---

# 🏗️ Architecture du projet

Ce portfolio est hébergé sur une architecture Cloud AWS moderne, serverless et automatisée.

```text
Utilisateur
      │
      ▼
Cloudflare DNS
      │
      ▼
CloudFront
      │
      ▼
Amazon S3
```

## Architecture de déploiement

```text
Développeur
      │
      ▼
Git Push
      │
      ▼
GitHub Actions
      │
      ▼
OIDC
      │
      ▼
IAM Role AWS
      │
      ▼
Amazon S3
      │
      ▼
CloudFront Invalidation
      │
      ▼
Site mis à jour automatiquement
```

---

# ☁️ Services AWS utilisés

| Service                 | Rôle                          |
| ----------------------- | ----------------------------- |
| Amazon S3               | Hébergement statique du site  |
| Amazon CloudFront       | CDN mondial et HTTPS          |
| AWS Certificate Manager | Certificat SSL/TLS            |
| IAM                     | Gestion des permissions       |
| OIDC Federation         | Authentification GitHub ↔ AWS |
| Cloudflare              | Gestion DNS du domaine        |
| GitHub Actions          | Pipeline CI/CD                |

---

# 🛠️ Stack technique

## Frontend

* HTML5
* CSS3
* JavaScript

## Cloud AWS

* Amazon S3
* Amazon CloudFront
* AWS Certificate Manager (ACM)
* IAM
* OIDC Federation

## DevOps

* Git
* GitHub
* GitHub Actions
* AWS CLI
* CI/CD

## Outils

* VS Code
* GitHub
* Cloudflare

---

# 🔐 Sécurité

Le déploiement utilise une architecture moderne basée sur OIDC.

Caractéristiques :

* Aucune clé AWS stockée dans GitHub
* Authentification GitHub ↔ AWS via OpenID Connect (OIDC)
* IAM Role dédié au déploiement
* Principe du Least Privilege
* Bucket S3 privé
* Distribution sécurisée via CloudFront
* HTTPS via AWS Certificate Manager

---

# 📂 Structure du projet

```text
portfolio-aws/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── assets/
│
├── index.html
├── style.css
├── script.js
│
└── README.md
```

---

# 🚀 Déploiement CI/CD

Chaque push sur la branche `main` déclenche automatiquement :

1. Récupération du code source
2. Authentification AWS via OIDC
3. AssumeRole IAM
4. Synchronisation du contenu vers Amazon S3
5. Invalidation du cache CloudFront

Workflow GitHub Actions :

```yaml
on:
  push:
    branches:
      - main
```

Résultat :

```text
git push
      │
      ▼
GitHub Actions
      │
      ▼
Déploiement AWS automatique
```

---

# 🎯 Compétences démontrées

## Cloud

* Amazon S3
* Amazon CloudFront
* AWS Certificate Manager
* IAM
* OIDC Federation

## DevOps

* GitHub Actions
* CI/CD
* Déploiement automatisé
* Infrastructure sécurisée

## Sécurité

* Least Privilege
* IAM Roles
* OpenID Connect (OIDC)
* HTTPS

---

# 🚧 Roadmap du projet

## Réalisé

* Hébergement S3
* CDN CloudFront
* HTTPS ACM
* Domaine personnalisé
* GitHub Actions
* OIDC AWS
* Déploiement automatique

## Prochaines évolutions

* Terraform (Infrastructure as Code)
* Lambda
* API Gateway
* DynamoDB
* Monitoring CloudWatch
* AWS Solutions Architect Associate

---

# 📫 Contact

🌐 Site : https://languille.site

💼 LinkedIn
https://fr.linkedin.com/in/martin-languill%C3%A9-6194aa133

💻 GitHub
https://github.com/Astroboy-ML

📧 Email
[martin.languille@gmail.com](mailto:martin.languille@gmail.com)

---

> Continuous learning. Continuous improvement. Cloud first.

---

# 📝 Commandes Git essentielles

Ce mémo résume les commandes Git que j'utilise le plus souvent pour versionner et publier les modifications du portfolio.

| Commande | Rôle | Quand l'utiliser | Exemple concret |
| --- | --- | --- | --- |
| `git status` | Affiche l'état du dépôt et les fichiers modifiés, ajoutés ou non suivis. | Avant chaque commit, pour vérifier ce qui va partir dans Git. | Vérifier que `README.md` et `terraform/` sont bien détectés avant un commit. |
| `git add .` | Ajoute tous les changements au prochain commit. | Quand les modifications locales sont prêtes à être enregistrées. | Préparer les mises à jour du README et du dossier Terraform. |
| `git commit -m "message"` | Crée un commit avec un message descriptif. | Une fois les changements validés localement. | `git commit -m "Update portfolio"` |
| `git push origin main` | Envoie les commits sur la branche `main` distante. | Quand le travail local est prêt à être déployé. | Déclencher le pipeline GitHub Actions du portfolio. |
| `git pull origin main` | Récupère et fusionne les derniers changements distants. | Avant de commencer ou avant un push si la branche a évolué. | Synchroniser le dépôt local avec les derniers commits du portfolio. |

Workflow complet de base :

```bash
git status
git add .
git commit -m "Update portfolio"
git push origin main
```

---

# 🌍 Déploiement du portfolio

Le déploiement est désormais automatique via GitHub Actions + OIDC. Après un `git push`, le pipeline s'authentifie auprès d'AWS sans clé secrète, puis synchronise le site vers S3 et invalide le cache CloudFront.

```text
Modification du code
        ↓
git push
        ↓
GitHub Actions
        ↓
OIDC
        ↓
IAM Role AWS
        ↓
S3 Sync
        ↓
CloudFront Invalidation
        ↓
Portfolio mis à jour
```

Aucune commande AWS CLI manuelle n'est désormais nécessaire pour publier le portfolio.

---

# 🏗️ Terraform Cheat Sheet

Cette section sert de mémo opérationnel pour le dossier `terraform/`. Les commandes ci-dessous couvrent l'initialisation, la validation, l'import des ressources existantes et l'inspection du state.

| Commande | Rôle | Quand l'utiliser | Exemple concret tiré du projet |
| --- | --- | --- | --- |
| `terraform init` | Initialise le projet Terraform, télécharge les providers et prépare le backend local. | Au premier lancement ou après une modification de configuration/provider. | Préparer le dossier `terraform/` avant de valider la configuration. |
| `terraform validate` | Vérifie la cohérence syntaxique et logique de la configuration Terraform. | Après une modification des fichiers `.tf`. | Contrôler que `provider.tf`, `main.tf`, `variables.tf` et `outputs.tf` restent valides. |
| `terraform plan` | Calcule les changements qui seraient appliqués à l'infrastructure. | Avant tout `apply`, pour relire l'impact exact. | Vérifier que le bucket `martin-languille-portfolio` et la distribution CloudFront ne seront pas modifiés involontairement. |
| `terraform apply` | Applique les changements décrits dans le plan. | Seulement après revue explicite. | Déployer une évolution contrôlée de l'infrastructure IaC. |
| `terraform import` | Rattache une ressource AWS existante au state Terraform. | Quand l'infrastructure existe déjà et doit devenir gérée par Terraform. | `terraform import aws_s3_bucket.portfolio martin-languille-portfolio` a permis d'importer le bucket S3 existant dans le state. |
| `terraform state list` | Liste les ressources suivies dans le state Terraform. | Pour vérifier ce que Terraform considère comme sa source de vérité. | Confirmer la présence de `aws_s3_bucket.portfolio` et `aws_cloudfront_distribution.portfolio`. |
| `terraform state show` | Affiche les attributs détaillés d'une ressource dans le state. | Pour auditer la configuration réelle stockée par Terraform. | Inspecter `terraform state show aws_cloudfront_distribution.portfolio` pour vérifier les paramètres importés. |
| `terraform fmt` | Reformate automatiquement les fichiers `.tf`. | Après édition manuelle ou avant commit. | Harmoniser le style de `main.tf` et `variables.tf` avant revue. |

Exemple d'import réellement utilisé dans ce projet :

```bash
terraform import aws_s3_bucket.portfolio martin-languille-portfolio
```

Cet import a permis de faire entrer un bucket S3 déjà existant dans le state Terraform, afin que Terraform devienne la source de vérité de l'infrastructure.

---

# 🎯 Ressources actuellement gérées par Terraform

Terraform suit actuellement les ressources suivantes :

```text
aws_s3_bucket.portfolio
aws_cloudfront_distribution.portfolio
```

Ces ressources ont été importées dans le state Terraform pour centraliser leur gestion dans IaC et éviter les écarts entre l'infrastructure réelle et le code.

---

# 🚀 Prochaines étapes

La roadmap du portfolio évolue vers une architecture plus complète et plus démonstrative pour un profil Cloud Engineer / AWS Solution Architect :

* Backend Terraform S3
* Terraform Remote State
* DynamoDB Locking
* Lambda
* API Gateway
* DynamoDB
* Monitoring CloudWatch
* AWS Solutions Architect Associate
