# Contributing

Thanks for helping improve Window Gestures Revived.

## Reporting a problem

Open a GitHub issue and include:

- GNOME Shell version and Linux distribution
- Wayland or X11 session
- The gesture and configured action
- Steps to reproduce, plus what you expected and what happened
- Relevant GNOME Shell log lines, with unrelated private information removed

## Proposing a change

Keep existing gesture behavior and settings keys stable unless the change is
intentional and documented. The extension uses GNOME Shell internals, so for a
new GNOME major version:

1. Read its GJS extension upgrade guide.
2. Check every changed API used in `src/extension.js` and `src/prefs.js`.
3. Keep compatibility with the oldest version in `src/metadata.json` using
   feature detection where needed.
4. Build with `./build.sh` and test on a GNOME Shell session when available.
5. Update `README.md`, `CHANGELOG.md`, and `TASKS.md` to match the support and
   verification status.

Do not commit generated schema caches or packaged ZIP files. Never add payment
processor secrets to the extension.
