$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$env:PYTHONIOENCODING = "utf-8"
$env:BROWSER_USE_HOME = Join-Path $root ".browser-use-home"
$env:BROWSER_USE_CONFIG_DIR = Join-Path $root ".browser-use-config"

& (Join-Path $root ".venv-browser-use\Scripts\browser-use.exe") @args
