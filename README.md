# Terraform basic infra

This is a repository to deploy an infrastructure that have 
- a custom vpc with 9 subnets, 3 publics, 3 privates, 3 subnets for data
- keypair already generated
- launch configuration, autoscaling group into the private subnets for high availability
- application load balancer with target group and a listener as well into the public subnets for high availability
- rds postgres 9.6.16 in data subnet for high availability.

![alt text](https://raw.githubusercontent.com/lbrulet/terraform-basic-infra/master/picture/aws.PNG)

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
