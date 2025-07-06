---
title: Git commits have both an author and a committer
date: 2025-06-08
keywords: [git]
---
Commits in Git have both an **author** and a **committer**. The distinction makes sense, although it probably doesn't matter in the vast majority of cases.

But, of course, GitHub decided to surface *both* of these bits of information, so if you want a commit to show up as someone else on GitHub specifically, you'll need to type in a very long command line (or script) with lots of redundant information (or at least I haven't found a better solution yet):

```sh
NAME='John Doe'
EMAIL='john@doe.com'
DATE='2025-06-08T00:00:00Z'

GIT_AUTHOR_NAME="$NAME" GIT_COMMITTER_NAME="$NAME" GIT_AUTHOR_EMAIL=$EMAIL GIT_COMMITTER_EMAIL=$EMAIL GIT_AUTHOR_DATE=$DATE GIT_COMMITTER_DATE=$DATE git commit -m 'Excellent commit description'
```

