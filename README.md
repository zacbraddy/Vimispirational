# Vimspirational
A repo that documents my journey into trying to be a developer who uses Vim as well as a place to keep my current setup.

## Table of Contents
- [Steps to setup on Windows](#steps-to-setup-on-windows)
- [ConEmu settings](#conemu-settings)
- [Plugins I'm using](#plugins-im-using)
- [Custom commands and key remaps in my vimrc](#custom-commands-and-key-remaps-in-my-vimrc)
- [Problems I'm sure I can solve but haven't yet](#problems-im-sure-i-can-solve-but-havent-yet)
- [Problems I've managed to overcome](#problems-ive-managed-to-overcome)

## Steps to setup on Windows
1. Install ConEmu, my favourite flavour is [cmder](http://cmder.net/)
1. Pull down my ConEmu settings to give you a basic setup. You need to pull down [this xml file](https://github.com/zacbraddy/Vimispirational/blob/master/con_emu_settings.xml) and then import it into ConEmu through the import functionality available from the settings menu which you can pull up in ConEmu using the shortcut `Win+Alt+P`
1. There are some setting in the ConEMU settings which point to paths on my local machine. Most notably the background image and the path to the vim exectuable for the VIM startup task you'll need to go change them for those to work.
1. Install clink into ConEmu. Download the zip file from [here](https://mridgers.github.io/clink/) then unzip the files directly into `%cmderinstallfolder%\cmder\vendor\conemu-maximus5\ConEmu\clink`. Clink is used to give you advanced autocomplete within the command line. Nothing really to do with vim it just makes ConEmu more powerful.
1. Got to [vim.org](http://vim.org/) and get the self-installing executable for vim. Install this whereever you wish but remember the path.
1. Put the symlinked vimrc in the `$VIM` directory and change the `g:pathToVimRc` so that it points to the `vimrc` in the folder where you pulled this repo down.
1. Install [vim-plug](https://github.com/junegunn/vim-plug#installation), you only need to put the `.vim` file in the autoload folder of your vimfiles, dead simple





1. Install Nerdtree using pathogen by git cloning the nerdtree solution into the bundle folder created during the install of pathogen. This is as per the NERDTree [github repo](https://github.com/scrooloose/nerdtree). When setting the help tags as per the installation instructions on the nerd tree github us `$VIM\bundle\nerdtree\doc\` in place of `~/.vim/bundle/nerdtree/doc/`. This makes the nerd tree reference files work correctly.
1. Install Fugitive using the install instructions on the [github repo](https://github.com/tpope/vim-fugitive).
1. Install unimpaired using the install instruction on the [github repo](https://github.com/tpope/vim-unimpaired).
1. Install the font SauceCodePro NF from [this github repo](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro) I used the regular weight.
1. Install vim-devicon installation instruction [can be found here](https://vimawesome.com/plugin/vim-devicons). Note that because you installed the font in the last step and the third step is to make changes to the vimrc you only really need to clone the plugin to make this work.
1. Install nerdtree-git-plugin using pathogen as per [github repo instructions](https://github.com/Xuyuanp/nerdtree-git-plugin).
1. Install vim-javascript for syntax highlighting [from this github](https://github.com/pangloss/vim-javascript).
1. Install vim-jsx for jsx syntax highlighting [from this github](https://github.com/mxw/vim-jsx).
1. Install vim-flow for flow static type checking [from this github](https://github.com/flowtype/vim-flow). I have a script in the vimrc that will make this plugin us the version of flow installed locally to your repo so no need to install this globally although if you find a problem this may be that this script is failing.
1. Install vim-gitgutter [from this article](https://vimawesome.com/plugin/vim-gitgutter).
1. Install vim-airline [from this article](https://vimawesome.com/plugin/vim-airline).
1. Install vim-airline-themes [from this article](https://vimawesome.com/plugin/vim-airline-themes).
1. Install numbers.vim [from this githum](https://github.com/myusuf3/numbers.vim).
1. Install surround.vim [from this article](https://vimawesome.com/plugin/surround-vim).
1. Download the latest release of universal ctags from [this repo](https://github.com/universal-ctags/ctags-win32/releases)
1. Extract the zip and place it in your vimfiles under a folder called ctags.
1. Add the ctags directory to your PATH variable.
1. Add ctags to your global gitignor by running this command `git ignore tags -g`
1. Go to the folder that you want to have ctags for and run `ctags -R --map-javascript=.jsx`
1. Install import-js [from this github](https://github.com/galooshi/vim-import-js)
1. Install vim-airline-clock [from this github](https://github.com/enricobacis/vim-airline-clock)
1. Install vim-rooter [from this github](https://github.com/airblade/vim-rooter)
1. Add the `npm-exec.bat` file to the `$VIM\bundle` folder (note when I say `\$VIM` I mean your install directory under the vimfiles folder so for example `C:\Vim\vim\vimfiles\bundle`.
1. Add the `$VIM\bundle` folder to your PATH variable.
1. Add my little git alias scripts to your global git config. `edit-unmerged` opens all unmerged changes in vim, helpful for when you have merge conflicts and you want to open them all to edit them. `add-unmerged` adds all the unmerged files to the staged changes for after you've done the merge. `prune-branches` deletes all local branches that no longer have a remote on the server. `prune-branches-force` does the same thing but deletes the branch even if it has unpushed changes, be careful with that second one!
1. Install ack from the [chocolatey repo](https://chocolatey.org/packages/ack). Note this will automatically install StrawberryPerl, to test this has worked correctly run the comman `perl` in the command line. StrawberryPerl adds things to your path variable to make this possible so if running the `perl` command gives you an inoperable command error then close your command window, open a new one and try again. If that doesn't work maybe try adding the paths StrawberryPerl added to the system path to your private path? Other than that you're on your own.
1. Install ack.vim via pathogen the command is on [their repo](https://github.com/mileszs/ack.vim)
1. Install ALE via pathogen, see [their github for details](https://github.com/w0rp/ale)
1. Install prettier globally `npm i prettier -g`
1. Install Vim-Autoclose via pathogen from [here](https://vimawesome.com/plugin/autoclose)
1. Install vim-windowswap via pathogen from [here](https://github.com/wesQ3/vim-windowswap)

## ConEmu Settings

|Setting Name|Value|
---|---
Features > Colors | Current Colour Scheme (Custom one that I made to work well with the deus airline them)
Features > Status bar > Show status bar | off
Features > In-console options > Use Clink in prompt | On
Features > Transparency > Alpha transparency > Active window transparency | Off
Main > Main console font | SauceCodePro NF
Main > Main console font size | 12
Main > Background > Background Image | [I use this image](https://wallpaperscraft.com/image/panda_art_apofiss_night_94616_1920x1080.jpg)
Main > Background Placement | Stretch-Fill
Main > Background Darkening | 51
Main > Font Face | Consolas
Main > Quake style > Quake style slide down turned | on
Main > Quake style > Animation time (ms) | 300
Main > Quake style > Appear delay | 100
Main > Quake stlye > Disappear | 100
Main > Size & Position > Window position (pixels) | Centered
Main > Size & Position > Window size | Maximized 
Main > Size & Position > Alignment > Restore to active monitor | On
Main > Tab bar > Tabs on Bottom | On
Main > Update > Do automatic check on | Startup
Main > Update > Preferred release type | Stable
Startup > Startup options > Specified named task | {Bash::Git bash}
Startup > Environment | Added the line `set projects=<projects folder path>`
Startup > Tasks | Added a Tools::Vim task I also set the hotkey for this task to Alt+N
Startup > Tasks > Bash::Git bash | Set the HotKey to LCtrl+Shift+T and also set the startup Project to my projects folder and set as Default task for new console

## Plugins I'm using

|Plugin name|Link|Why?|
---|---|---
Sensible|https://github.com/tpope/vim-sensible|The defaults on vim are showing their age a bit and sensible makes vim at it's core behave a little more like you'd expect a modern editor to act

## Custom commands and key remaps in my vimrc

|Command or Key remap|Mode[filetype]|What it does|Why?|
---|---|---|---
`<c-u>`|Normal,Insert|Toggles the case on the current word
`<leader>"`|Normal|Put double quotes around the current word
`<leader>'`|Normal|Put single quotes around the current word
`<localleader>c`|Normal[javascript]|Comment out this line of code
`<localleader>u`|Normal[javascript]|Uncomment this line of code
`jk`|Normal, Visual|Change back to normal mode to save me having to use Esc
`in(`|Operator|Do something with what's in the next set of parentheses on the line
`il(`|Operator|Do something with what's in the previous (last) set of parentheses on the line
`an(`|Operator|Do something with what's in the next set of parentheses on the line, including the parentheses
`al(`|Operator|Do something with what's in the previous (last) set of parentheses on the line, including the parentheses
`<leader>ev`|Normal|Edit the vimrc that vim is currently using
`<leader>sv`|Normal|Source the vimrc again to reload it after making settings changes and the like
`<c-j>,` `<c-k>,` `<c-h>,` `<c-l>`|Normal|Moves the cursor between active windows in the appropriate direction|Just didn't want to have to hit <C-W> before each of them, this simplifies things
:CAB|Command|Silently deletes all open buffers|When I begin a new problem I like to have a clean slate so I close all my buffers before beginning a new
`<esc>`|Normal|Clear highlighting in normal mode to clear that annoying highlighting you get after doing a find
`<F6>`|Normal,Insert|Runs `:set shellslash`|Some plugins I use need `:set noshellslash` to work correctly because I'm on windows however with that set like that when I use ^X^F in insert mode it fills in the wrong slashes for my directories, I needed a quick way to flick between the two
`<F7>`|Normal,Insert|Runs `:set noshellslash`|See above
`<leader>w`, `<leader>h`|Normal|Sets the tab settings to 4 spaces|My work requires me to use 4 spaces when I'm coding but I prefer 2 so I needed a quick way to switch between the two when I'm switching between doing my own coding and works
`<leader>cd`|Normal|Sets the pwd to the the directory of the currently open buffer|This helps for when you are trying to use ^X^F that's what it was there for before, although now I'm using vim-rooter I wonder if I don't need this anymore....hmmm....I'll have to test this.
`<F2>`|Normal|Runs the `:NERDTreeToggle` command to open NERDTree|Less key presses to open NERDTree

## Problems I'm sure I can solve but haven't yet

- vim-rooter seems to only change the pwd after syntastic as already made it's check which means the first file you open for any project won't automatically get linted because syntastic falls over the background, every subsequent file opened doesn't have this problem because the root has already been changed. This would be a pretty big problem if you were working on two projects at the same time and flicking back and forth but as it stands this is a minor inconvenience for me so I'm leaving it as a problem to solve another day.

#### General ideas

- Read [this article](https://hackernoon.com/5-vim-plugins-i-cant-live-without-for-javascript-development-f7e98f98e8d5) and start installing summa dem sweet plugins!
- Checkout [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) for code completion. Looks pretty cool!
- Making it so that the backup, undo and swap directories are created automatically. Some [ideas for this can be found here](http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory)

## Problems I've managed to overcome

See problems I've managed to overcome archived in [v1.0 of my dotfiles](https://github.com/zacbraddy/Vimspirational/blob/v1.0/README.md#problems-ive-managed-to-overcome)
