# Deed

Trigger => Action scripts, enables having a trigger to handle one more actions.

## Getting Started

This project could be installed anywhere, but I suggest in a user folder to ease update and modification

- Triggers scripts are placed on `triggers` folders (currently only supports wifi, more to be added)
- Actions scripts are placed following this structure `<trigger_name>/<wifi_name>` and all scripts will be executed (only with execution permissions)

**Note:** Under `actions/wifi` folder are two sub-folders you must change the name (case sensitve) to match your Home and office SSID network names.

### Prerequisites

- OSX with Bash

### Installing

Clone this repository

Give exec permission to the `install.sh` script

```bash
chmod +x install.sh
```

Run install

```bash
./install.sh
```

Create your secrets file

```
cp secrets{.example}.sh
```

Add your google id form and slack token (for initial scripts, more to come)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Based on [this post](https://www.schiff.io/blog/2017/08/31/automating-slack-status-launchd)