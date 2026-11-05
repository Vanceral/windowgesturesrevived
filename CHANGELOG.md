# Changelog

All notable changes to Window Gestures Revived are recorded here. The version
number matches `version` in `src/metadata.json`.

## [16] - 2026-11-05

First prepared release of the Window Gestures Revived community continuation.

### Added

- GNOME Shell 50 and 51 compatibility, with GNOME 51 behavior confirmed on
  Fedora 45.
- A fixed-workspace recommendation in the preferences and README, suggesting
  eight workspaces.
- A Ko-fi support link and matching QR code in the preferences.
- A repeatable build script with strict GSettings schema validation.
- Repository maintenance and release guidance.

### Changed

- Renamed the extension to Window Gestures Revived and assigned it a unique
  extension UUID.
- Preserved the original settings schema ID so existing gesture preferences
  remain available.
- Updated GNOME Shell APIs for GNOME 49 through 51 while retaining feature
  detection for the declared GNOME 45 through 48 compatibility range.
- Replaced upstream funding links with the maintainer's Ko-fi page.

### Credits

- Forked from [thyttan/windowgestures](https://github.com/thyttan/windowgestures),
  which carries forward the original Window Gestures project by Amarullz.

## Earlier history

Changes before the fork are preserved in the Git history of the upstream
project. This changelog starts with the first prepared Window Gestures Revived
release.
