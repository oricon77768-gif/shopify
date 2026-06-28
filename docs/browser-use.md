# browser-use setup

This workspace has a local `browser-use` environment installed.

Run commands from the workspace root:

```powershell
.\browser-use.ps1 doctor
.\browser-use.ps1 open https://example.com
.\browser-use.ps1 state
.\browser-use.ps1 screenshot screenshot.png
```

The wrapper sets:

- `BROWSER_USE_HOME=.browser-use-home`
- `BROWSER_USE_CONFIG_DIR=.browser-use-config`
- `PYTHONIOENCODING=utf-8`

This avoids Windows console encoding issues and keeps browser-use files inside the workspace.
