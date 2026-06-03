@echo off
setlocal
set "ROOT=%~dp0"
set "ROOT=%ROOT:~0,-1%"
set "GIT_DIR=%ROOT%\work\git-meta"
"C:\Program Files\Git\cmd\git.exe" --git-dir="%GIT_DIR%" --work-tree="%ROOT%" %*
