# Merge Conflict Resolution

## What happened

This happens when two branches change the same section of a file. In this example, `develop` and `feature/add-branching-doc` both change `README.md`, so Git stops and asks for help.

## How to reproduce it

1. Switch to `develop` and make sure it is up to date:

```bash
git checkout develop
git pull origin develop
```

2. Create a feature branch and change the README:

```bash
git checkout -b feature/add-branching-doc
echo "Added a new branching note." >> README.md
git add README.md
git commit -m "Update README on feature branch"
git push -u origin feature/add-branching-doc
```

3. Go back to `develop` and make a conflicting edit:

```bash
git checkout develop
echo "Added a different note on develop." >> README.md
git add README.md
git commit -m "Update README on develop"
git push origin develop
```

4. Merge `develop` into the feature branch:

```bash
git checkout feature/add-branching-doc
git pull origin feature/add-branching-doc
git merge develop
```

Git will report a conflict if the same lines were changed.

## Fixing the conflict

1. Check which files are conflicted:

```bash
git status
```

2. Open the file with conflict markers. It will look like this:

```text
<<<<<<< HEAD
Added a different note on develop.
=======
Added a new branching note.
>>>>>>> feature/add-branching-doc
```

3. Edit the file so it contains the final version you want.

4. Tell Git the conflict is resolved:

```bash
git add README.md
```

5. Finish the merge with a commit:

```bash
git commit -m "Resolve merge conflict between feature/add-branching-doc and develop"
```

6. Push the branch again:

```bash
git push origin feature/add-branching-doc
```

## Merge back into develop

After resolving the conflict, merge the feature branch into `develop`:

```bash
git checkout develop
git pull origin develop
git merge --no-ff feature/add-branching-doc
git push origin develop
```

## Useful commands

- `git merge --abort` — cancel the merge if you want to start over.
- `git diff` — see the exact differences before you commit.
- `git log --graph --oneline --all` — check how branches relate to each other.
