# Azure App Service with Terraform, deployment slots and app settings

This repository contains a demo on how to use Azure Services deployment slots with Terraform (yes, with app settings too !).    
The demo consists in :
- a few Terraform files to provision an App Service and a deployment slot
- a simple ASP.NET web app
- GitHub Action workflows to:
  - provision the Azure resources
  - deploy the web app: the _blue_ version on the _production_ slot, and the _green_ version on the _staging_ slot
  - swap the _staging_ slot with the _production_ one (as many time of you want)
  - destroy the Azure resources once you have finished to save costs
