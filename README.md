# Portfolio — Martin Languillé

Portfolio professionnel moderne conçu pour une transition vers Cloud Engineer puis AWS Solution Architect.
Le site est prêt pour un déploiement statique sur AWS S3 + CloudFront.

## Description

Ce portfolio met en avant :
- une transition professionnelle honnête vers AWS,
- une expérience SaaS hospitalière solide,
- des compétences Cloud, DevOps, infrastructure et développement,
- un projet public unique : `docker-api-lab`,
- une roadmap AWS claire,
- une section certifications avec placeholders pour les badges.

## Architecture AWS recommandée

- Amazon S3 : hébergement statique des fichiers HTML/CSS/JS.
- Amazon CloudFront : distribution globale et TLS.
- AWS Certificate Manager (ACM) : certificat SSL.
- Amazon Route 53 : gestion DNS.

Flux : Utilisateur → CloudFront (HTTPS, ACM) → S3 (site statique)

## Installation

Copiez le dossier du projet puis ouvrez `index.html` dans un navigateur pour vérifier le rendu local.

## Déploiement AWS

Synchroniser vers un bucket S3 :

```bash
aws s3 sync . s3://martin-portfolio --delete
```

Puis invalider CloudFront :

```bash
aws cloudfront create-invalidation --distribution-id <DISTRIBUTION_ID> --paths "/*"
```

## Structure du projet

- `index.html` : page principale.
- `style.css` : styles visuels et responsive.
- `script.js` : comportement de navigation mobile et mise à jour de l'année.
- `assets/` : dossier des images (`photo.png`, `numihfrance.png`, `unilasalle.png`).

## À compléter

- Ajouter `assets/photo.png` pour la photo de profil.
- Ajouter `assets/numihfrance.png` et `assets/unilasalle.png` pour les logos.
- Remplacer le lien CV placeholder par un vrai fichier PDF.
- Ajouter badges de certification AWS et Terraform.
- Déployer sur AWS S3 / CloudFront.
