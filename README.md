# Vimispirational
A repo that documents my journey into trying to be a Vim developer as well as a place to keep my current setup.

## Steps to setup on Windows
1. Install ConEmu, my favourite flavour is [cmder](http://cmder.net/)
1. Pull down my ConEmu settings to give you a basic setup. You need to pull down [this xml file](https://github.com/zacbraddy/Vimispirational/blob/master/con_emu_settings.xml) and then import it into ConEmu through the import functionality available from the settings menu which you can pull up in ConEmu using the shortcut `Win+Alt+P`
1. Install [Babun](http://babun.github.io) you can follow the steps on the site they're pretty simple.
1. Because Babun installs a separate version of Cygwin and a different environment you'll need to setup new SSH keys even if you already had some setup on another Cygwin install (I have to admit I don't know this is the case, I'm guessing here seen as I had SSH keys setup on my box and when I installed Babun they couldn't seem to find them)

## Problems I faced during install that I haven't solved
### Conemu
- When I was setting up the Babun task I wanted to use the `%projects% ` variable that I setup in the Environment settings as the startup directory but Babun seems to have trouble understanding the variable that was setup in ConEmu. For now I've hard coded the startup directory to my projects directory and also left the variable as they're separately useful but it would be great find a way to use these together.
- Babun appears to hijack the ConEmu shorcuts so I can't use the keybinding to open a new shell or switch between shells with Babun open 

### Babun
- When I installed Babun I found that I was getting an error that was suggesting that a child process couldn't be forked and that I needed to rebaseall. WTF right?! [this post](https://stackoverflow.com/questions/9300722/cygwin-error-bash-fork-retry-resource-temporarily-unavailable) helped out. I went through all the steps on the accepted answer, they all worked except for the last one which then suggested that I restart, so I did that and after that it was fine. 
>Lesson learned: Restart after installing Babun on a windows box
