# cookiecutter-terraform

## Using .env/ folder

You can use the .env folder to store secrets or things you don't want to share. Once you edit files in the .env folder (for example terraform variables containing api keys), you need to re-encrypt the tar file containing the folder.

## Store an API token in a terraform variable (for PagerDuty in this example)

* create .env/ folder in the repo (this is already ignored by git through .gitignore)
* create tf_env.json file
* Populate the file with variables, matching your terraform variables

```hcl
variable "pagerduty_token" {
    description = "API Token to use to manipulate and manage PD settings"
    type        = string
}
```

* add matching variable definition to tf_env.json

```json
{
    "TF_VAR_pagerduty_token": "*************xt5"
}
```
* Run `make update-secrets` from the repository's root folder. It will ask you to confirm your work multiple times.
* Make sure the tar file generated is added to the repository `git add .env.tar.enc`
* Confirm that travis.yml have the latest openssl config
* Make sure, that you add the amazon access keys to the tf_env.json

```json
{
  "TF_VAR_aws_access_key_id": "AK******************",
  "TF_VAR_aws_secret_access_key": "M*********************Z",
}
```

* Get the right key from the amazon secrest store, currently in the root of us-east-1/
