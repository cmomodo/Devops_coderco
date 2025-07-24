with this challenge we start by first giving users a menu.
we used everything we learned from the other challenges and implemented a menu system.

the only hard thing was to link the source of the .zshrc which AI was able to solve.

```
# Source shell configuration to access the google function
source ~/.bashrc 2>/dev/null || source ~/.bash_profile 2>/dev/null || source ~/.zshrc 2>/dev/null || true

```
This will link the option 3 to the .zshrc file.
