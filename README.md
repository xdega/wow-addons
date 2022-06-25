# WoW Addon Management

- Try to pull addons in as Git submodules where possible.
- If an addon has an associated release script in its repo (ie. `.pkgmeta`) then run the following command:
  - `./release.sh -t "_AddonSubmodule/" -r "AddonSubmodule"`
  - Note that any submodule that requires a release script should be prepended with `_`
