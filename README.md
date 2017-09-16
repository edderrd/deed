# Deed

Trigger => Action scripts, enables having a trigger to handle one more actions.

## Getting Started

This project could be installed anywhere, but I suggest in a user folder to ease update and modification

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