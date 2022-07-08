# azure-terraform

This repository shows how modules and components can be used in a complex infrastructure.
A module is a small and reusable building block, but most-likely not of real use for a consumer. 
The components make use of multiple modules to provision a complete part of your infrastructure.

For example, modules can have dry bulding blocks like naming, keyvault, secret, redis
To deploy a redis cache consumer can use redis module to create actual redis resource, naming module to generate names, secret module to store any of the secrets from this module and hence provisioning a complete infrastructure.
