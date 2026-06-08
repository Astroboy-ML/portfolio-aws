# 🚀 Martin Languillé — Portfolio Cloud & AWS 

![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900)
![CloudFront](https://img.shields.io/badge/CloudFront-CDN-blue)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI%2FCD-2088FF)
![Cloudflare](https://img.shields.io/badge/Cloudflare-DNS-F38020)

> Portfolio professionnel conçu pour accompagner mon évolution vers des fonctions de Cloud Engineer puis AWS Solutions Architect.

🌐 Site : https://languille.site

---

# 🏗️ Architecture du projet

Ce portfolio est hébergé sur une architecture Cloud AWS moderne, serverless et entièrement automatisée.

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

## Architecture Infrastructure as Code

```text
Terraform
      │
      ▼
AWS + Cloudflare

State Terraform
      │
      ▼
S3 Remote Backend
      │
      ▼
DynamoDB State Locking
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

# ☁️ Services utilisés

| Service                 | Rôle                            |
| ----------------------- | ------------------------------- |
| Amazon S3               | Hébergement statique du site    |
| Amazon CloudFront       | CDN mondial et HTTPS            |
| AWS Certificate Manager | Certificat SSL/TLS              |
| IAM                     | Gestion des permissions         |
| OIDC Federation         | Authentification GitHub ↔ AWS   |
| Cloudflare DNS          | Gestion DNS                     |
| Terraform               | Infrastructure as Code          |
| DynamoDB                | Verrouillage du state Terraform |
| GitHub Actions          | Pipeline CI/CD                  |

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

## Infrastructure as Code

* Terraform
* Terraform Remote State
* S3 Backend
* DynamoDB Locking
* Cloudflare Provider
* AWS Provider

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
* Remote State Terraform stocké dans S3
* State Locking DynamoDB
* Validation DNS ACM automatisée via Cloudflare

---

# 📂 Structure du projet

```text
portfolio-aws/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── terraform/
│   ├── bootstrap/
│   │   ├── provider.tf
│   │   ├── main.tf
│   │   └── outputs.tf
│   │
│   ├── provider.tf
│   ├── backend.tf
│   ├── main.tf
│   ├── iam.tf
│   ├── acm.tf
│   ├── cloudflare.tf
│   ├── outputs.tf
│   └── variables.tf
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

## Cloud AWS

* Amazon S3
* CloudFront
* AWS Certificate Manager
* IAM
* OIDC Federation

## Infrastructure as Code

* Terraform
* Terraform Import
* Terraform State Management
* Remote State S3
* DynamoDB Locking
* Cloudflare Provider
* Infrastructure Reconstruction

## DevOps

* GitHub Actions
* CI/CD
* AWS CLI
* Déploiement automatisé

## Sécurité

* Least Privilege
* IAM Roles
* OpenID Connect (OIDC)
* HTTPS
* DNS Validation

---

# 🏆 Ce projet démontre

Ce portfolio n'est pas uniquement un site vitrine.

Il démontre la capacité à :

* Concevoir une architecture AWS serverless
* Mettre en place un pipeline CI/CD sécurisé
* Utiliser OIDC sans clés d'accès AWS
* Gérer une infrastructure complète via Terraform
* Centraliser l'état Terraform avec Remote State S3
* Sécuriser les modifications grâce au State Locking DynamoDB
* Automatiser la gestion DNS Cloudflare
* Automatiser la validation ACM
* Reproduire une infrastructure à partir du code

---

# 🎯 Ressources actuellement gérées par Terraform

```text
aws_s3_bucket.portfolio
aws_s3_bucket_policy.portfolio

aws_cloudfront_distribution.portfolio
aws_cloudfront_origin_access_control.portfolio

aws_acm_certificate.portfolio
aws_acm_certificate_validation.portfolio

aws_iam_openid_connect_provider.github
aws_iam_role.github_actions
aws_iam_role_policy.portfolio_deployment

cloudflare_dns_record.root
cloudflare_dns_record.www

cloudflare_dns_record.acm_validation["languille.site"]
cloudflare_dns_record.acm_validation["www.languille.site"]
```

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
* Terraform
* Remote State S3
* DynamoDB Locking
* Gestion DNS Cloudflare
* Validation ACM automatisée
* Infrastructure as Code complète

## Prochaines évolutions

* Visitor Counter Serverless
* AWS Lambda
* API Gateway
* DynamoDB
* CloudWatch Monitoring
* WAF géré par Terraform
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


