#import "@local/radharc:0.1.0": radharc

#import "@preview/tiaoma:0.3.0": qrcode

#show: radharc.with(
  title: "Git Workshop (or Git Gud)",
  author: "Dara MacConville",
)

= Setup
== Slides & Notes
#figure(
  link(
    "https://macconville.ie/git-notes",
    qrcode(
      "https://macconville.ie/git-notes",
      options: (scale: 4.0),
      alt: "https://macconville.ie/git-notes",
    ),
  ),
)

/ URL: #link("https://macconville.ie/git-notes")[macconville.ie/git-notes]
/ Repo: #link("https://github.com/DaraMac/git-masterclass")[github.com/DaraMac/git-masterclass]

== Downloading Git
/ Instructions: #link("https://git-scm.com/install")[git-scm.com/install]
/ Linux: Use package manager
/ Mac: Package manager (#link("https://brew.sh")[brew.sh]) or Xcode
/ Windows: Git Bash

== Setting Up A Forge
/ GitHub: #link("https://github.com")[github.com]
/ GitLab: #link("https://gitlab.com")[gitlab.com]
/ Codeberg: #link("https://codeberg.org")[codeberg.org]
/ Forgejo: #link("https://forgejo.org")[forgejo.org]
/ SourceHut: #link("https://sourcehut.org")[sourcehut.org]
/ cgit: #link("https://git.zx2c4.com/cgit/about")[git.zx2c4.com/cgit/about]

== Connecting GitHub
- Follow this guide, line-by-line, no skipping!
- #link(
    "https://docs.github.com/en/authentication/connecting-to-github-with-ssh",
  )[docs.github.com/en/authentication/connecting-to-github-with-ssh]

== Getting a GUI
/ Official list: #link("https://git-scm.com/tools/guis")[git-scm.com/tools/guis]
/ GitHub Desktop: #link("https://github.com/apps/desktop")[github.com/apps/desktop]
/ Windows: GitHub desktop (download from link)
/ Mac: GitHub desktop (#link("https://formulae.brew.sh/cask/github")[Brew formula available])
/ Linux: #link("https://codeberg.org/ckruse/Gitte")[codeberg.org/ckruse/Gitte]

== Editor Integration
- RStudio #link("https://happygitwithr.com/rstudio-git-github.html")[happygitwithr.com/rstudio-git-github.html]
- VSCode #link("https://code.visualstudio.com/docs/sourcecontrol/quickstart")[code.visualstudio.com/docs/sourcecontrol/quickstart]

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
- #link("https://github.com/unhappychoice/gitlogue")[Cinema!]

= Introduction
== Resources
- #link("https://wizardzines.com/git-cheat-sheet.pdf")[wizardzines.com/git-cheat-sheet.pdf]
- #link("https://ohshitgit.com")[ohshitgit.com]
- #link("https://git-scm.com/book/en/v2")[git-scm.com/book/en/v2]
- #link("https://wizardzines.com/zines/git")[wizardzines.com/zines/git]
- #link("https://happygitwithr.com")[happygitwithr.com]
- #link("https://book.the-turing-way.org/reproducible-research/vcs")[book.the-turing-way.org/reproducible-research/vcs]

== Model
- Distributed version control system
- It's just files in `.git/`
- Graphs!
- Hashs

== Configuring
- ```sh git config --list --show-origin```
- ```sh git config --global user.name "Your Name"```

== Initialising a Repo
```sh git init```

== Cloning
```sh git clone url```

== Status
```sh git status```

== Ignoring
- `.gitignore`
- .DS_Store
- \_\_pycache\_\_
- `.Renviron`
- Any other examples

== Remotes
```sh git remote```

== Adding
```sh git add```

== Committing
- ```sh git commit```
- ```sh git commit --amend```

== Pushing
```sh git push```

== Seeing History
```sh git log```

== Branching
- ```sh git branch name```
- ```sh git switch name```
- Create with `-c` flag

== Diffing
- ```sh git diff```
- ```sh git diff --staged```

== Pulling
- ```sh git pull```
- Not to be confused with a pull request

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

= Next Steps
== Collaborating!
- Add other people to private repos
- Or just leave it public
- Find a project
- Pull Requests

== Hooks
- #link("https://pre-commit.com")[pre-commit.com]

== Actions
- #link("https://docs.github.com/en/actions")[docs.github.com/en/actions]
