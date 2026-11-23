# Working on this repo

## Keep the local site running

A working local copy of the website must be running at http://localhost:4000 the whole time changes are being made in this repo.

**Start it** (in the background, from the repo root, PowerShell) if nothing answers on port 4000:

```powershell
$env:RUBYOPT = "-r$PWD\_dev\ruby32-compat.rb"
bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

- Wait for `Server running...` and confirm http://127.0.0.1:4000/ returns 200.
- Run `bundle install` first if gems are missing. Ruby 3.3 with DevKit is installed via winget (`RubyInstallerTeam.RubyWithDevKit.3.3`); if `ruby` isn't on PATH in the current shell, reload PATH from the machine/user environment.
- `_dev/ruby32-compat.rb` is required: the `github-pages` gem pins Jekyll 3.9 / Liquid 4.0.3, which crash on Ruby 3.2+ (`undefined method 'tainted?'`). It is loaded only by the local server; Jekyll ignores `_dev/`, so it is never published.

**After every change:** stop the running server, start it again with the command above, wait for `Server running...`, and check that the changed page loads (HTTP 200, and the change is visible) before reporting the change as done.

If the build fails, fix it before moving on. Never leave the site broken or stopped.
