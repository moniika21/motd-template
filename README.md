# Template for motd

## Colors

In order to use color aliases in all modules, you **must** add the `color` file along other motd files in the folder, no need to make it executable.

## Modules

They are several modules/functions in the sysinfo file that you can comment or uncomment to enable or disable diplays.

All modules are enabled by default.

> **Warning**
> The update module is intended for debian-based ditributions only with use of [Apt](https://en.wikipedia.org/wiki/APT_(software)).

## Logos

There is logos in the logo folder, you must make the logo file you want executable and put it in the `/etc/update-motd.d` folder.

I used some ascii arts found on the web or with the `neofetch` command.

For example:

```bash
neofetch --ascii_distro raspbian_small
neofetch --ascii_distro debian
neofetch --ascii_distro ubuntu
```

See `man neofetch` to see all distributions logo available.

I used some weird algorithms to [shrink](https://codegolf.stackexchange.com/questions/241412/shrink-ascii-art) the previous ascii arts to have a fair height logo.

If you want to generate others distribution names with the same police that I used, you'll need the `figlet` command.

```bash
 figlet -f small name_of_distribution
```

## Disable defaults messages

### Motd default message

The motd default message is in the `/etc/motd` file.
This file is diplsayed by default before all other motd messages.
This is the only file that you musn't make executable.
You can harmlessly delete this file or change the content like it is a normal text file.
The content may vary between distributions.

### Ssh last connection message

In the `/etc/ssh/sshd_config` file, set the `PrintMod` variable to `no` in order to disable ssh motd last connection message.

```bash
PrintMotd no
```
