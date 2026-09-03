#import "@local/radharc:0.1.0": radharc

#import "@preview/tiaoma:0.3.0": qrcode

#show: radharc.with(
  title: "Git Masterclass",
  author: "Dara MacConville",
  date: datetime(year: 2026, month: 9, day: 3),
)

= Setup
== Slides & Notes
#figure(
  link(
    "https://macconville.ie/masterclass",
    qrcode(
      "https://macconville.ie/masterclass",
      options: (scale: 4.0),
      alt: "https://macconville.ie/masterclass",
    ),
  ),
)

/ URL: #link("https://macconville.ie/masterclass")[macconville.ie/masterclass]

== Downloading Git
/ Instructions: https://git-scm.com/install
/ Linux: Use your package manager
/ Mac: Package manager (#link("https://brew.sh")[brew.sh]) or Xcode
/ Windows: Git Bash

== Setting Up A Forge
/ GitHub: #link("https://github.com")[github.com]
/ GitLab: #link("https://gitlab.com")[gitlab.com]
/ Codeberg: #link("https://codeberg.org")[codeberg.org]
/ Forgejo: #link("https://forgejo.org")[forgejo.org]
sourcehut
cgit

== Connecting GitHub
- SSH! https://docs.github.com/en/authentication/connecting-to-github-with-ssh

== Getting a GUI
/ Official list: #link("https://git-scm.com/tools/guis")[git-scm.com/tools/guis]
/ GitHub Desktop: #link("https://github.com/apps/desktop")[github.com/apps/desktop]
/ Windows: Download from link
/ Mac: Brew formula available
/ Linux: #link("https://codeberg.org/ckruse/Gitte")[codeberg.org/ckruse/Gitte]

== Editor Integration
- RStudio
- VSCode https://code.visualstudio.com/docs/sourcecontrol/quickstart

= Motivation
== Workflow
Demo

== Goals
- By the end of this workshop, all your code will be backed up, and be done easily and continually from now on

== Version Control
- A way of backing up, and also versioning any text
- A free and fairly easy and quick way to ensure you *don't ever lose your code*
- Also keeps track of versions, no more *FINAL, FINAL (2), LAST EDIT, COPYv2*
- Share and collaborate more easily
- Reproducibility
- Keep everything organised in one place

== What to Version Control
- Everything text
  - Code
  - Papers (if not already on Overleaf)
  - Notes
  - Configuration files (dotfiles)

== Datasets?
- A small to mid size csv maybe
- Possibly not pure text, so not such a good fit for VCS like git
- Maybe too big
- But some will be appropriate
- Should be backed up _somewhere_!

== Reproducibility
- Personal
  - I want you to ask yourself, how long would it take to restore all your work on a brand new machine, and how difficult/easy would it be?
  - No need for hypothetical, let's test right now!
- For other researchers / users
- Licence!
- Demo

== Other Things
- Testing
- CI/CD
- Releases

== Git
- Most popular and thus well supported and resourced version control system

== GitHub
- Most popular and thus well supported and resourced git forge
- Not official!

== Fun Things
- GitHub pages site
- Social network features
  - Stars
  - Following
- #link("https://github.com/unhappychoice/gitlogue")[cinema!]

= Introduction
== Links Again
#figure(
  link(
    "https://macconville.ie/masterclass",
    qrcode(
      "https://macconville.ie/masterclass",
      options: (scale: 4.0),
      alt: "https://macconville.ie/masterclass",
    ),
  ),
)

/ URL: #link("https://macconville.ie/masterclass")[macconville.ie/masterclass]

== Resources
- https://wizardzines.com/git-cheat-sheet.pdf
- https://ohshitgit.com
- https://git-scm.com/book/en/v2
- https://wizardzines.com/zines/git
- https://book.the-turing-way.org/reproducible-research/vcs

== Model
- Distributed version control system
- It's just files in `.git/`
- Graphs!
- Hashs

== Setting up a repo
```sh git init```

== Status
```sh git status```

== Remotes
```sh git remote```

== Adding
```sh git add```

== Committing
- ```sh git commit```
- ```sh git commit --amend```

== Ignoring
- `.gitignore`
- .DS_Store
- \_\_pycache\_\_
- `.Renviron`
- Any other examples

== Seeing History
```sh git log```

== Branching
- ```sh git branch name```
- ```sh git switch name```
- Create with `-c` flag

== Diffing
- ```sh git diff```
- ```sh git diff --staged```

== Pushing
```sh git push```

== Pulling
- ```sh git pull```
- Not to be confused with a pull request

== Cloning
```sh git clone url```

== Configuring
- ```sh git config --list --show-origin```
- ```sh git config --global user.name "Your Name"```

== Merging
- ```sh git merge name```
- Conflicts

== Tagging
- ```sh git tag name```
- ```sh git push --tags```

== Throwing Away Changes
- ```sh git restore name```

== Undoing Change
- ```sh git revert hash```
- ```sh git checkout hash -- path/to/file```

== The Nuclear Option
```sh rm -rf```

== Collaborating!
- Add other people to private repos
- Or just leave it public
- Find a project

== Hooks

== Actions
https://docs.github.com/en/actions

== Exercise
You should all o
Call
me
Ishmael.

ago
