terraform {
  backend "s3" {
    region = "us-east-1"
      key    = "{{ cookiecutter.project_slug }}/staging/foo_service/terraform.tfstate"
    bucket = "{{ cookiecutter.states_bucket }}"
  }
}
