## Goal

Easily backup your PostgreSQL Database to Azure storage Account

Intended to be used with Kubernetes for creating Jobs that can back up your postgresql database.

## Running the Backup Job in Kubernetes cluster
### Step 1. Create a storage account 

Create a storage account with a fileshare

### Step 2. Replace your Database creds.
Replace database creds in [pg-backup-Job.yaml]

### Step 3. Update the secret.yaml and job.yaml with the DB and storage connectionstrings

Update the secret.yaml and cronjob.yaml with the DB and storage connectionstrings

## Running manually on your computer

### Step 1. Replace the image name with the lastest image provided, below is the defualt provided in the cronjob yaml

aakarsh94/postgres-backup:v1 `

### Step 2. Run the job

 Apply the job and secrets.yaml in your kubernetes cluster

