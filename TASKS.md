# Maintenance and release checklist

## Current support

- [x] Declare GNOME Shell 49 through 51 in `src/metadata.json`.
- [x] Use the GNOME 49 `Mtk.Rectangle` and `Meta.Window` APIs directly; do not ship legacy calls that Shexli flags for supported versions.
- [x] Confirm installation, gestures, and preferences on Fedora 45 with GNOME Shell 51 through maintainer use.
- [ ] Exercise the full gesture and settings matrix on GNOME Shell 49 and 50. GNOME Shell 51 is the only declared version confirmed in a session so far.
- [x] Preserve the original settings schema ID and assign a unique fork UUID.
- [x] Recommend fixed workspaces in the preferences and README, with eight as the suggested count.
- [x] Keep gesture behavior aligned with the upstream version. The brief window carry-over during rapid workspace animation was also observed on GNOME 48 with the upstream extension, so no behavior change is included for it.

## GitHub readiness

- [x] Prepare the README, changelog, contribution guidance, and maintenance rules.
- [x] Point project funding and extension support links to the maintainer's Ko-fi page.
- [x] Create the GitHub fork under the maintainer account and verify repository metadata and links.
- [x] Publish the prepared source and documentation to the fork's default branch; verify the repository page, support link, and executable build script.
- [x] Publish version 16 to GitHub; its first extensions.gnome.org review flagged legacy Meta.Window compatibility calls and a generated schema cache in the archive.
- [x] Remove legacy GNOME 45–48 API fallbacks, keep only GNOME 49–51 declared, and split the Shell lifecycle entry point from the gesture manager.
- [x] Build a version 17 archive with XML schemas only and include upstream attribution in the distributed manager module.
- [x] Run Shexli 0.2.1 locally. Its outdated metadata rule flags GNOME 51 as a false positive; GNOME Extensions' analyzer reports no issues for submitted version 2.
- [x] Install version 17 into the local GNOME profile and verify it is ACTIVE after logging back into GNOME Shell 51.1.
- [x] Exercise version 17 on GNOME Shell 51.1: maintainer confirms all gestures; preferences launch command returned; disable/re-enable returned to ACTIVE.
- [x] Build and verify the version 17 archive.
- [x] Publish version 17 source and maintenance notes to the GitHub default branch.
- [x] Submit version 17 to extensions.gnome.org for review 77992; its Shexli analyzer reports no issues.
- [x] Post a reviewer note identifying upstream provenance, AI assistance, API changes, and tested GNOME Shell version.
- [x] Review 77992 rejected version 17 for timeout replacement/tracking and unnecessary generated comments.
- [x] Build and inspect the version 18 archive with all manager timeouts tracked and cleared on replacement and destroy.
- [ ] Submit version 18 to extensions.gnome.org and await the review decision.
- [ ] Await the review decision for version 3.

## Repeatable release checklist

1. Read the GJS extension upgrade guide for the GNOME release.
2. Check APIs used by `src/extension.js` and `src/prefs.js` against the guide.
3. Add a Shell version to metadata only after addressing relevant API changes.
4. Update `CHANGELOG.md`, the supported-version policy in `README.md`, and the tested-version status in `TASKS.md`.
5. Run `./build.sh`, install the archive, exercise affected gestures and preferences, and inspect Shell logs.
6. Record the test environment and result here. Do not describe a declared version as runtime-tested unless it was exercised in a Shell session.
