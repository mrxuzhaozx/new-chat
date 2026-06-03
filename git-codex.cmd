@echo off
setlocal
set "ROOT=%~dp0"
set "ROOT=%ROOT:~0,-1%"
set "GIT_DIR=%ROOT%\work\git-meta"
set "CODEX_GIT_HOME=%ROOT%\work\git-home"
set "GIT_CONFIG_GLOBAL=%CODEX_GIT_HOME%\.gitconfig"
set "HOME=%CODEX_GIT_HOME%"
if not exist "%CODEX_GIT_HOME%" mkdir "%CODEX_GIT_HOME%"
if not exist "%GIT_CONFIG_GLOBAL%" (
  > "%GIT_CONFIG_GLOBAL%" echo [credential]
  >> "%GIT_CONFIG_GLOBAL%" echo     helper = manager
  >> "%GIT_CONFIG_GLOBAL%" echo [http]
  >> "%GIT_CONFIG_GLOBAL%" echo     sslBackend = openssl
)
"C:\Program Files\Git\cmd\git.exe" --git-dir="%GIT_DIR%" --work-tree="%ROOT%" %*
