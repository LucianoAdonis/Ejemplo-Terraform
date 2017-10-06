# Ejemplo-Terraform-AWS

Archivo de configuración de terraform, que asigne recursos ya existentes durante la creación de la instancia:

- IP estatica
- Security groups
- Roles
- llave .pem 

Ademas este permite traspasar el archivo "script.sh" a la maquina creada para que sea ejecutado dentro de esta, este puede ser modificado y ser utilizado para realizar la instalación de algún componente necesario para la instancia.

### Instalación de Terraform ###

```
mkdir terraform
cd terraform/
curl -O https://releases.hashicorp.com/terraform/0.9.11/terraform_0.9.11_linux_amd64.zip
unzip terraform_0.9.11_linux_amd64.zip
sudo mv terraform /usr/local/bin
terraform
```


### Ejecución ###

Modificar el archivo vars.tf reemplazando <VAR> con la información que se requiera.
  
- AWS_ACCESS_KEY y AWS_SECRET_KEY: llaves creadas dentro de AWS al momento de asignar permisos a terraform.
- AWS_REGION: región a utilizar. Por ejemplo "us-east-1".
- AMIS: AMI de la instancia. Por ejemplo al usar Ubuntu "ami-13be557e".
- PATH_TO_SECURITY: especificar el nombre del security group. Por ejemplo "launch-wizard-1".
- PATH_TO_PRIVATE_IP: IP privada que se desee usar. Por ejemplo "172.31.25.150".
- PATH_TO_ROLE: especificar el nombre de un rol existente.
- PATH_TO_AWS_KEY_NAME: nombre de llave para conexión ssh. Por ejemplo, una llave test.pem, sería "test".
- PATH_TO_INSTANCE_TYPE: tipo de instancia. Por ejemplo, "t2.micro"
- INSTANCE_USERNAME: nombre de usuario. Por ejemplo en usando la AMI de ubuntu el usuario sería "ubuntu".


Dentro del directorio con todos los archivos, ejecutar:

```
terraform apply
```

De no funcionar, se me olvido algún "}" en el código principal.

### Hecho con ###

* [Terraform](https://www.terraform.io) - El software que hace la magia
