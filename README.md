# Terraform basic infra

This is a repository to deploy an infrastructure that have 
- a custon vpc with 9 subnet, 3 publics, 3 privates, 3 for data
- keypair already generated
- launch configuration, autoscaling group
- application load balancer with target group and a listener as well

## Installation

Use terraform from [HashiCorp](https://www.terraform.io/docs/index.html) to install.

```bash
terraform init
```

## Usage

To deploy the infrastructure
```bash
make up
```

To destroy the infrastructure
```bash
make down
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
