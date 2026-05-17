# devops-exam-1

## Branching strategy

This repository follows a branching workflow built around `main`, `develop`, and short-lived feature branches.

- `main` is the production branch.
- `develop` is the integration branch for the next release.
- `feature/*` branches are used for new work and are merged into `develop`.

## Environment variables

Copy `.env.example` to `.env` and set your own values:

```bash
cp .env.example .env
```

Edit `.env` with your actual database password and other settings. Never commit `.env` to the repo.

## Merge conflict resolution

conflict happens when two or more branch push changes at the same time 
to stop such conflict merge conflict is used 

for creating a conglict :
small changes is added to the develop branch in test.html
then checkout to main where the conflict occurs 
conflict is resolved using the editor then branch are merged.

# dockerfile 

i have created the dockerfile for test.java app

with proper base images entrypoint 

# container
 i have build and image test1 first then run that image using 

 `docker build -t test-1 .`

 `dcoker run -d test-1`

 # docker compose 

 created docker-compose.yml for managing multi-container setup 
 app and database 

 # CI pipeline using github actions 

 a build-test.yml file is created for the CI workflow using github actions 

 # bash script

 two scripts are written for deployment and rollback 

# Configuring ENvironment 

`.env` file was created for confuguring the environment variable for the databse securely and gitignore to not pusgh that file 
