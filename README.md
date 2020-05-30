# Incident Log

## Install 

To install il run the following command: 

```bash
ln -s *.sh ~/.bin
```

Add `~/.bin` to your path if it's not there 

You can copy and paste this into your .zshrc and I'm pretty sure your .bashrc. 

```bash
export PATH="$HOME/.bin:$PATH:"
```

## Aliases
To make life easier add the following aliases to your shell (.zshrc, .bashrc, etc..):

```bash
ia='~/.bin/il.sh -a'
ilist='~/.bin/il.sh -l'
ir='~/.bin/il.sh -r'
it='~/.bin/il.sh -t'
```
## Usage 
 
This program will capture input from stdin and append it to a file in the `~/incident-logs` folder. Filenames follow the pattern of `yyyy-MM-dd.log` with the date being the current day.

### Action Items

#### Usage

```bash
# Alias 
ia "Fantastic Idea to fix a root cause"

# No-Alias 
il.sh -a "Fantastic Idea to fix a root cause"
```

#### Output 

```
2020-05-15|12:10:28|ACTION ITEM|Fantastic Idea to fix a root cause
```

### Timeline 

#### Usage

```bash
# Alias 
it "We did this thing"

# No-Alias 
il.sh -t "We did this thing"
```

#### Output 

```
2020-05-15|12:10:28|TIMELINE|We did this thing
```

### Root Cause 

#### Usage

```bash
# Alias 
ia "This is the reason"

# No-Alias 
il.sh -a "This is the reason"
```

#### Output 

```
2020-05-15|12:10:28|ROOT CAUSE|This is the reason
```



