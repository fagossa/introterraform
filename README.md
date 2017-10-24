# AWS example with terraform

## Creating keys

### Creating private + public keys

```
$ ssh-keygen -t rsa
```
Enter `~/.ssh/terraform_rsa`

Now you should have the following files:

* terraform_rsa
* terraform_rsa.pub

### Creating pem files

```
$ openssl rsa -in ~/.ssh/terraform_rsa -outform pem > terraform_rsa.pem
```

### Import key into AWS

Now you need to import your public key into the `aws` console.

## installing the provider

```
$ terraform init
```

## Executing the script

```
$ terraform apply
```

## Cleaning up resources
```
$ terraform destroy -force
```
