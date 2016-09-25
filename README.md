# ci

###Using git-flow with ci hooks:

> ci hoooks works currently only for skrupel git repository: "https://github.com/sepplsche/skrupel.git"

- download Portable Git from: https://github.com/git-for-windows/git/releases/download/v2.10.0.windows.1/PortableGit-2.10.0-64-bit.7z.exe
- extract Protable Git (selfextracting archive)
- clone skrupel git repository
- init git-flow for this repositry with "git flow init -d"
- copy all post-flow-... scripts from ci to the ".git/hooks" folder in the cloned skrupel git repository

ci hooks are executed when calling "git flow feature|release publish|finish", causing the server to instantly re/deploy the newest changes

###Using kdiff3 mergetool for Git:
- donwload and install kdiff3 from: https://sourceforge.net/projects/kdiff3/files/
- config git to use kdiff3 as merge tool and diff tool:
```
  git config --global --add merge.tool kdiff3
  git config --global --add mergetool.kdiff3.path "C:/Program Files/KDiff3/kdiff3.exe"
  git config --global --add mergetool.kdiff3.trustExitCode false
  
  git config --global --add diff.guitool kdiff3
  git config --global --add difftool.kdiff3.path "C:/Program Files/KDiff3/kdiff3.exe"
  git config --global --add difftool.kdiff3.trustExitCode false
```
- if need to resolve merge conflicts call: git mergetool

###Using credetial helper on Windows for Git:
- call: git config --global credential.helper wincred
