#import "@local/radharc:0.1.0": radharc

#import "@preview/tiaoma:0.3.0": qrcode

// red colour theme
#let rubric = rgb(221, 0, 33)

#show: radharc.with(
  title: "Git Workshop",
  author: "Dara MacConville",
)

= Setup
== Source Files & Website
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

// Set outgoing link style
#let link-style(it) = {
  it
  if type(it.dest) != label {
    sym.wj
    h(0.12em)
    sym.wj
    super(
      box(
        height: 0.345em,
        circle(radius: 0.109em, stroke: 0.0635em + rubric),
      ),
    )
  }
}
#show link: link-style

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
/ RStudio: #link("https://happygitwithr.com/rstudio-git-github.html")[happygitwithr.com/rstudio-git-github.html]
/ VSCode: #link(
    "https://code.visualstudio.com/docs/sourcecontrol/quickstart",
  )[code.visualstudio.com/docs/sourcecontrol/quickstart]

== Nicer Command Line
- #link("https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git")[git plugin] from #link("https://ohmyz.sh")[Oh My Zsh]
- #link("https://cli.github.com")[GitHub CLI (Command Line Interface)]
- #link("https://github.com/jj-vcs/jj")[Jujutsu]

= Motivation
== Goals
- All your code will be backed up, and be done easily and continually from now on

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
  - Configuration files (#link("https://wiki.archlinux.org/title/Dotfiles")[dotfiles])

== Datasets?
- A small to mid size csv maybe
- Possibly not pure text, so not a good fit for version control systems
- Maybe too big
- But some will be appropriate
- Should be backed up _somewhere_!

== Reproducibility
- Personal
  - Ask yourself, how long would it take to restore your work and working environment on a brand new machine,
  - No need for hypothetical, test right now!
- For other researchers / users
- #link("https://choosealicense.com")[Licences!]

== Other Useful Things in Forges
- #link("https://docs.github.com/en/actions/tutorials/build-and-test-code")[Testing] and #link("https://github.com/resources/articles/ci-cd")[CI/CD]
- #link("https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases")[Releases]

== Git
- Most popular and thus well supported and resourced version control system
- #link("https://xkcd.com/1597")[xkcd.com/1597]

== GitHub
- Most popular and thus well supported and resourced git forge
- Not official!

== Fun Things
- #link("https://docs.github.com/en/pages")[GitHub Pages site]
- Social network features
  - Stars
  - Following
- #link("https://github.com/unhappychoice/gitlogue")[Cinema!]

= Introduction
== Resources
- #link("https://wizardzines.com/git-cheat-sheet.pdf")[wizardzines.com/git-cheat-sheet.pdf], save this!
- #link("https://ohshitgit.com")[ohshitgit.com], some common problems
- #link("https://git-scm.com/book/en/v2")[git-scm.com/book/en/v2], the *official* book on git
- #link("https://wizardzines.com/zines/git")[wizardzines.com/zines/git], educational comics
- #link("https://happygitwithr.com")[happygitwithr.com], specifically for R users
- #link("https://book.the-turing-way.org/reproducible-research/vcs")[book.the-turing-way.org/reproducible-research/vcs], general guide for open data science

== Model
- Distributed version control system (VCS)
- It's just files in `.git/`
- #link(
    "https://medium.com/girl-writes-code/git-is-a-directed-acyclic-graph-and-what-the-heck-does-that-mean-b6c8dec65059",
  )[Graphs!]
- #link("https://pretextbook.org/gfa/html/commit-hashes.html")[Hashs]

== Configuring
- ```sh git config --global user.name "Your Name"```
- ```sh git config --global user.email yourEmail@example.com```
- ```sh git config --global push.autoSetupRemote true```
- ```sh git config --global init.defaultBranch main```
- ```sh git config --list``` shows current settings
- See book #link("https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup")[chapter on setting up] and #link("https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration")[chapter on configuration] for more information

== Initialising a Repo
```sh git init```

== Ignoring
- Create a `.gitignore` file and add names
- `.DS_Store`
- `__pycache__`
- `.Renviron`
- Other language or development tool specific files

== Cloning
- ```sh git clone url```
- Make sure to clone over SSH for repos you work on

== Status
```sh git status```

== Remotes
- ```sh git remote```
- Add ```sh --verbose``` or ```sh -v``` for more information

== Adding
```sh git add```

== Committing
- ```sh git commit```
- ```sh git commit --amend```

== Pushing
```sh git push```

== Seeing History
- ```sh git log```
- There's lots of options to change what you see

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
- This is the stage where conflicts might occur on multi-user repos

== Tagging
- ```sh git tag name```
- ```sh git push --tags```

== Throwing Away Changes
- ```sh git restore name```

== Undoing Change
- ```sh git revert hash```
- ```sh git checkout hash -- path/to/file```

== The Nuclear Option
- ```sh rm -rf```
- Then clone the repo again

= Next Steps
== Collaborating!
- Add other people to private repos
- Or just leave it public
- Find a project that's interesting to contribute to
- #link("https://docs.github.com/en/pull-requests/reference/pull-requests")[Pull Requests]

== Hooks
- Located in a project's `.git/hooks/` folder
- #link("https://pre-commit.com")[pre-commit.com]
- #link("https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks")[Book chapter on hooks]

== Actions
- #link("https://docs.github.com/en/actions")[docs.github.com/en/actions]
