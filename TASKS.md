# Maintenance and release checklist

## Current support

- [x] Declare GNOME Shell 45 through 51 in `src/metadata.json`.
- [x] Port the extension to GNOME Shell 51 APIs while retaining feature detection for GNOME Shell 45 through 48.
- [x] Confirm installation, gestures, and preferences on Fedora 45 with GNOME Shell 51 through maintainer use.
- [ ] Exercise the full gesture and settings matrix on each declared GNOME version. Declared support is not a substitute for session testing.
- [x] Preserve the original settings schema ID and assign a unique fork UUID.
- [x] Recommend fixed workspaces in the preferences and README, with eight as the suggested count.
- [x] Keep gesture behavior aligned with the upstream version. The brief window carry-over during rapid workspace animation was also observed on GNOME 48 with the upstream extension, so no behavior change is included for it.

## GitHub readiness

- [x] Prepare the README, changelog, contribution guidance, and maintenance rules.
- [x] Point project funding and extension support links to the maintainer's Ko-fi page.
- [x] Create the GitHub fork under the maintainer account and verify repository metadata and links.
- [x] Publish the prepared source and documentation to the fork's default branch; verify the repository page, support link, and executable build script.
- [x] Publish version 16 with a changelog summary and verify the GitHub Actions build and archive check pass.
- [ ] Submit the extension to extensions.gnome.org and add its listing link here after approval.

## Repeatable release checklist

1. Read the GJS extension upgrade guide for the GNOME release.
2. Check APIs used by `src/extension.js` and `src/prefs.js` against the guide.
3. Add a Shell version to metadata only after addressing relevant API changes.
4. Update `CHANGELOG.md` and the tested-version status in `README.md`.
5. Run `./build.sh`, install the archive, exercise affected gestures and preferences, and inspect Shell logs.
6. Record the test environment and result here. Do not describe a declared version as runtime-tested unless it was exercised in a Shell session.
