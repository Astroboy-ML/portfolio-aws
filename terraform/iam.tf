resource "aws_iam_openid_connect_provider" "github" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com"
  ]

  thumbprint_list = [
    "22ff89586561fc2d52f77491e9f1eff1b80be33e"
  ]
}

resource "aws_iam_role" "github_actions" {
  name = "GitHubActionsPortfolioDeployRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.github.arn
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }
          StringLike = {
            "token.actions.githubusercontent.com:sub" = "repo:Astroboy-ML/portfolio-aws:ref:refs/heads/main"
          }
        }
      }
    ]
  })

  inline_policy {
    name = "PortfolioDeploymentPolicy"

    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Sid    = "ListPortfolioBucket"
          Effect = "Allow"
          Action = [
            "s3:ListBucket"
          ]
          Resource = "arn:aws:s3:::martin-languille-portfolio"
        },
        {
          Sid    = "ManagePortfolioObjects"
          Effect = "Allow"
          Action = [
            "s3:GetObject",
            "s3:PutObject",
            "s3:DeleteObject"
          ]
          Resource = "arn:aws:s3:::martin-languille-portfolio/*"
        },
        {
          Sid    = "CloudFrontInvalidate"
          Effect = "Allow"
          Action = [
            "cloudfront:CreateInvalidation"
          ]
          Resource = "*"
        }
      ]
    })
  }
}