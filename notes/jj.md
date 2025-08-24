* JJ as GIT alternative
---
** Init
jj init
Initialize jujutsu repo.

** Init with git compatibility
jj git init --colocate
Initialize jujutsu with git compatibility.

** Log
jj
View log history

** Describe
jj describe -m "<message>"
Set commit message of working-copy commit

** New commit
jj new -m "<message>"
Create new empty commit on top of the current one and making the new working-copy
commit.
> [!NOTE] You can give it any commit to create new commit on top of that

** Commit
jj commit -m <"message">
This command perfom two commands,jj describe and jj new subsequently.

** Status
jj st
Check for changes on a working-copy commit

** Bookmarks
jj bookmark track main@origin
track main branch from origin.

** Push
jj push -r @-
Push previous commit because after describing a commit we switched to new commit

*** Alternatives to using jj commit
jj bookmark create <name> -r @
Aim is to push the bookmark/feature before running jj new.

** Edit revision
jj edit
jump to revs to edit

Links

---
[Markdown notes](markdown.md)

