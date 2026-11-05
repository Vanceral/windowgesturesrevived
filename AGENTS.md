# Repository maintenance rules

- Keep `src/metadata.json` as the source of truth for supported GNOME Shell
  major versions. Add a version only after checking its upgrade guide and
  addressing every breaking change used by this extension.
- This extension directly uses GNOME Shell internals. Before each GNOME
  release, review its GJS upgrade guide and inspect uses of affected APIs in
  `src/extension.js` and `src/prefs.js`.
- Preserve compatibility with the oldest version still listed in
  `shell-version`; use feature detection when APIs differ between supported
  versions.
- Keep gesture behavior and existing settings keys stable unless a deliberate
  behavior change is documented.
- Keep `settings-schema` in metadata equal to the schema ID in the XML file.
  Treat that schema ID as stable because changing it resets user preferences.
  Keep the extension UUID and packaged ZIP name aligned. Do not commit generated
  `schemas/gschemas.compiled` or the packaged ZIP.
- Build distributables with `./build.sh`. The build must work repeatedly from
  a clean checkout and validate schemas strictly.
- Update `README.md` and `TASKS.md` when support policy or porting status
  changes. Distinguish versions declared as supported from versions actually
  exercised on a GNOME Shell session.
- Keep the support link in `src/prefs.js`, the README, and
  `src/donation-qr.svg` pointed at the same public donation page. Regenerate the
  QR asset whenever that URL changes. Never put payment processor secrets in
  the extension.
