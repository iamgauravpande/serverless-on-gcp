# serverless-on-gcp
This repo Demonstrates Deploying code on GCP Serverless Platform called Cloud Function(1st Gen) to achieve certain stateless Task.

### Pre-Requisites:

- Terraform on your local system to build required Infra.

- Infra GCP Service Account that will be linked with WIF Pool.

![GCP INFRA SERVICE ACCOUNT](./img/github_actions_infra_sa.JPG)


- GCP Runtime Service Account to be used by Cloud Function with Other GCP Resources.

![Cloud Function Runtime Service Account](./img/GCP_CloudFunction_Runtime_SA.JPG)


-  Below GCP API's Enabled:
   - Cloud Scheduler API
   - Cloud Pub/Sub API
   - Serverless VPC Access API
   - Cloud Functions API
   - Cloud Build API
   - Cloud Logging API
   - Secret Manager API
   - Security Token Service API


### Security Best Practice: 

- Github Actions (used as a CI/CD tool for Infra Deployment) needs to use GCP WIF Authentication to communicate with GCP resources. 
Reference [GCP WIF](https://dev.to/iamgauravpande/enabling-workload-identity-federation-for-github-actions-on-gcp-h8g) 

- Google Secret Manager Service should be used to store any secrets/passwords used by Cloud Function code and to be imported as  Secret Environment Variables.


### GCP Serverless Conceptual Diagram:

![GCP Serverless](./img/GCP_CloudFunction_1stGen.JPG)

