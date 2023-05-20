# Template for motd

Each kind of module is stored in their own folder, you must make all the files you want to be displayed executable and put them in the `/etc/update-motd.d` folder.

You can also create symbolic links to these files:

```bash
ln -s $(pwd)/logos/15-ubuntu-logo /etc/update-motd.d/
````

## Custom messages

### Infos

They are several modules/functions in the `30-sysinfo` file that you can comment or uncomment to enable or disable diplays.

```bash
main() {
 os_module
 ip_module
 uptime_module
 updates_module
 disk_module
 cores_module
 ram_module
 swap_module
 processes_module
 temperature_module
}
```

All modules are enabled by default.

> **Warning**
> The update module is intended for debian-based ditributions only with use of [Apt](https://en.wikipedia.org/wiki/APT_(software)).

#### Colors

The default color displayed with or without the aliases is **green**.
You can modify it with another color code. You can find a buch of color codes in the `.colors` file in my `shell-config-template` repository on Github.

In the `demo` folder, you have a sample off all colors code available and the menus rendering associated.

```bash
cat demo.txt
```

### Logos

There is logos in the logo folder, if you want a logo to be displayed, you just have to make the desired logo file executable and put it in the `/etc/update-motd.d` folder.

I used some ascii arts found on the web or with the `neofetch` command.

For example:

```bash
neofetch --ascii_distro raspbian_small
neofetch --ascii_distro debian
neofetch --ascii_distro ubuntu
```

See `man neofetch` to see all distributions logo available.

I used weird algorithms to [shrink](https://codegolf.stackexchange.com/questions/241412/shrink-ascii-art) the previous ascii arts to have a fair height logo.

If you want to generate others distribution names with the same police that I used, you'll need the `figlet` command.

```bash
 figlet -f small <name_of_distribution>
```

```bash
 figlet -f small NAME_OF_DISTRIBUTION
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
