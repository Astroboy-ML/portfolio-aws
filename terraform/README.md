# Terraform

Ce dossier contient l'infrastructure AWS du portfolio. Il sert à gérer le bucket S3 d'hébergement et la distribution CloudFront associée, en gardant le code d'infrastructure séparé du site statique et du pipeline CI/CD.

## Ressources gérées

- Bucket S3 `martin-languille-portfolio`
- Distribution CloudFront `E3CVRBTO9GU9Y6`

## Fichiers à conserver

- `provider.tf`
- `main.tf`
- `variables.tf`
- `outputs.tf`
- `terraform.tfvars`
- `.terraform.lock.hcl`

Les fichiers d'état `terraform.tfstate` et `terraform.tfstate.backup` doivent rester locaux et ne pas être versionnés.

## Commandes de base

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform import aws_s3_bucket.portfolio martin-languille-portfolio
terraform import aws_cloudfront_distribution.portfolio E3CVRBTO9GU9Y6
terraform state list
```

## Notes

- `terraform.tfvars` contient uniquement des valeurs de configuration non sensibles dans ce projet.
- `cloudfront_generated.tf` est un artefact de génération utile pendant l'apprentissage ou la migration, mais il doit idéalement être absorbé dans la configuration principale une fois validé.
- `terraform apply` ne doit être lancé qu'après revue explicite, jamais de manière automatique dans le pipeline de nettoyage.
