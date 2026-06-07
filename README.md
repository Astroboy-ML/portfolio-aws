# 🚀 Martin Languillé — Portfolio Cloud & AWS

> Portfolio professionnel conçu pour accompagner mon évolution vers des fonctions de Cloud Engineer puis AWS Solution Architect.

🌐 Site : https://languille.site

---

# 🏗️ Architecture du projet

Ce portfolio est hébergé sur une architecture Cloud AWS moderne et serverless.

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

Services AWS utilisés :

| Service                 | Rôle                         |
| ----------------------- | ---------------------------- |
| Amazon S3               | Hébergement statique du site |
| Amazon CloudFront       | CDN mondial et HTTPS         |
| AWS Certificate Manager | Certificat SSL/TLS           |
| Cloudflare              | Gestion DNS du domaine       |
| AWS CLI                 | Déploiement automatisé       |

---

# 🛠️ Stack technique

### Frontend

* HTML5
* CSS3
* JavaScript

### Cloud

* Amazon S3
* Amazon CloudFront
* AWS Certificate Manager

### Outils

* VS Code
* Git
* GitHub
* AWS CLI

---

# 📂 Structure du projet

```text
portfolio-aws/
│
├── index.html
├── style.css
├── script.js
│
├── assets/
│   ├── photo.png
│   ├── numihfrance.png
│   └── unilasalle.png
│
└── README.md
```

---

# 🚀 Déploiement

Synchronisation vers Amazon S3 :

```bash
aws s3 sync . s3://martin-languille-portfolio --delete
```

Invalidation du cache CloudFront :

```bash
aws cloudfront create-invalidation \
  --distribution-id DISTRIBUTION_ID \
  --paths "/*"
```

---

# 🔐 Sécurité

Le site est distribué via HTTPS grâce à :

* AWS Certificate Manager
* Amazon CloudFront
* Cloudflare DNS

Le bucket S3 reste privé et n'est accessible qu'à travers CloudFront.

---

# 📫 Contact

🌐 Site : https://languille.site

💼 LinkedIn :
https://fr.linkedin.com/in/martin-languill%C3%A9-6194aa133

💻 GitHub :
https://github.com/Astroboy-ML

📧 Email :
[martin.languille@gmail.com](mailto:martin.languille@gmail.com)

---

> Continuous learning. Continuous improvement. Cloud first.
