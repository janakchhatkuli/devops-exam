# devops-exam-1

## Branching strategy

This repository follows a branching workflow built around `main`, `develop`, and short-lived feature branches.

- `main` is the production branch.
- `develop` is the integration branch for the next release.
- `feature/*` branches are used for new work and are merged into `develop`.

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

