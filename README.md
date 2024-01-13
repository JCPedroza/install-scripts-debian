# Debian Install Scripts

Scripts for installing specific toolchains on Debian-based
systems (`apt` is used when possible). Bash is the expected
shell, but some scripts might work with other shells.

In order to run a script, you might first need to give execution
permission to the file.

```bash
chmod +x <file path>
```

To run a script use `.` or `source`.

```bash
./<file path>
source <file path>
```

It'll look like this, using the `general-dev` script as example:

```bash
chmod +x general-dev.sh
./general-dev.sh
```
