# Debian Install Scripts

Scripts for installing specific toolchains on Debian-based
systems (`apt` is used when possible). The expected shell is
`bash`, but some scripts might work with other shells.

In order to run a script, you might first need to give execution
permission to the file.

```bash
chmod +x <file path>
```

Then To run the script use `.` or `source`.

```bash
./<file path>
source <file path>
```

It'll look like this, using the `general-dev` script as example:

```bash
chmod +x general-dev.sh
./general-dev.sh
```
