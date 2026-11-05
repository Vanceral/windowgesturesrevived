# Window Gestures Revived

Window Gestures Revived is a community continuation of [Window Gestures](https://github.com/amarullz/windowgestures), a GNOME Shell extension for controlling and moving windows with touchpad gestures. This fork updates the extension for current GNOME Shell versions while preserving its original settings schema and gesture behavior.

## Features

- Assign actions to three- and four-finger swipes, pinches, and holds
- Move and resize windows with touchpad gestures
- Send windows to the adjacent workspace with a gesture
- Maximize, restore, fullscreen, and snap windows
- Customize gesture thresholds, acceleration, and interface placement

## Compatibility

The extension metadata declares GNOME Shell 45 through 51. The GNOME 51 port, renamed extension, and preferences were installed and used on Fedora 45 by the maintainer. Other declared Shell versions have not all been exercised as part of this fork's porting work.

The extension uses GNOME Shell internals. New GNOME versions are added only after reviewing their extension upgrade guide and adapting affected APIs. See [TASKS.md](TASKS.md) for the current maintenance and release checklist.

## Recommended workspace setup

Window transfers work best with a fixed number of workspaces. Open **Settings → Multitasking → Workspaces**, choose **Fixed Number of Workspaces**, and set the count to **8** for comfortable room to move windows around. With dynamic workspaces, GNOME may remove empty workspaces, leaving less predictable destinations. The extension preferences show this recommendation too.

## Install from a build

Disable the original **Window Gestures** extension before installing this fork so both extensions do not capture the same touchpad gestures. Then build and install the ZIP:

```sh
./build.sh
gnome-extensions install --force windowgesturesrevived@vanceral.github.io.zip
```

On Wayland, log out and back in, then enable **Window Gestures Revived** in the Extensions app. The fork has its own extension UUID, so GNOME treats it as a separate extension. It retains the original settings schema ID, which preserves existing gesture preferences.

## Build requirements

The build requires `glib-compile-schemas` and `zip`. From the repository root, run:

```sh
./build.sh
```

The script strictly validates the GSettings schema and creates `windowgesturesrevived@vanceral.github.io.zip`. Generated schema caches and ZIP archives are build outputs and should not be committed.

## Report an issue

Please include your GNOME Shell version, distribution, whether you use Wayland or X11, the gesture and action involved, and the steps needed to reproduce the problem. For runtime errors, include the relevant GNOME Shell log excerpt. Do not include private information from unrelated log entries.

## Project history and credit

This repository forks [thyttan/windowgestures](https://github.com/thyttan/windowgestures), which carries forward the original project by Amarullz. The original authors and their work remain credited. Window Gestures Revived is an independent community continuation and is not affiliated with the original authors.

The project is free software under GPL-2.0-or-later. See [COPYING](COPYING).

## Support

The GNOME compatibility work took a lot of research, debugging, and testing. If the extension has been useful to you, a small [Ko-fi tip](https://ko-fi.com/vanceral) is a way to say thanks. The preferences include the same link and a QR code. Tips are optional and appreciated.

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for changes in each project version.
