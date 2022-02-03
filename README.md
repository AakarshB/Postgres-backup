## Goal
Easily backup your PostgreSQL Database to Azure storage Account Using a kubernetes job.

Intended to be used with Kubernetes for creating Jobs that can back up your postgresql database.

![Postgresql-backup-restore-architecture](https://user-images.githubusercontent.com/85996087/152222511-8f3946a8-8a5a-4020-9f2c-c8a32a9c7fa1.jpg)

## Prerequisities to gather

![image](https://user-images.githubusercontent.com/85996087/152321263-216e41b6-f8cc-4ff2-8d51-573bcfa343d0.png)

## Running the Backup Job in the Source Kubernetes cluster

### Step 1. Create an Azure storage account 

Create a storage account with a fileshare

### Step 2. Replace your Database creds.

Replace database creds in [pg-backup-Job.yaml]

### Step 3. Update the secret.yaml and pg-backup-job.yaml

Update the secret.yaml and pg-backup-job.yaml with the DB and storage connectionstrings

### Step 1. Replace the image name with the version specific to your PostgreSQL server.

Below is an example of the image name which is specific to PostgreSQL version 11

aakarsh94/postgresql-backup:v11 `

### Step 5. Run the job

Apply the job and secrets.yaml in your kubernetes cluster
