# Vim for JS development

## Preface
The biggest project that you will work  is your working machine's filesystem. It is made of numerous binaries and work projects that we need to bounce from time to time.

For example:

My day to day as a developer I'm developing on at least 3 core projects on top of greenfield initiatives for which involve not only the project itself but proofs of concept and drafts that I'm working to present.

## The UNIX shell
lightweight
portable
configurable(Make it your own)

## I wanted my editor flow to be the same

## 1.What is Vim?
VIM stands for vi improved and it's a text editor built to enable efficiency

- lightweight
- portable (You will find vi included in a lot of UNIX systems)
- configurable(Make it your own)

### It's installed in many unix based systems
You will notice that any of these below will have vi installed.

alpine linux - docker run -it --rm alpine /bin/sh 
ubuntu - docker run -it --rm ubuntu /bin/bash
arch - docker run -it --rm arch /bin/bash

## 2.Why?
- Portable
- Configurable
- Lightweight

## 3. Basics
Modes:
normal mode
insert mode
command mode
visual mode
replace mode
 
### Movements
1. hjkl
		Will take time
		hoping over by l is inconvenient
	w - jump by a word
	e - jump by end of word
	b - jump back by word
	f - jump to character in line
	F - jump backwards to character in line
	t - jump til the character
	T - jump backwards til the character
	; - repeat the jump results
2. Deleting
	- dd - delete line
	- shift + d will delete the line content
	- u - undo
	- ctrl + r - redo
	- x - delete one character
3. Copying
	- yank with y
	- paste with p - below
	- paste with P - top
	- Copy to clipboard (cmd + c still works)
	- Talk about vim registers 
4. Visual mode selection
	- v and walk 
	- shift + v highlight the whole line
5. Editing
	- i - goes into insert mode
	- I - goes into insert mode in the beginning of the file
	- Esc back to normal mode
	- a - append from normal mode to insert mode
	- A - append to end of line
	- o - insert on below line
	- O - insert on above
	- c - change
	- C - change the rest of the line
6. Combining movements
	- dw - delete word
	- diw - delete within word
	- yy - copy line
	- d3j - delete 3 lines below
	- ci( - change inside parenthesis
	- ci{ - change inside brackets
7. Commands in vim (pipe to editor)
	- :r ./file.js
	- :w ./new_file.js
	- :r! curl https://jsonplaceholder.typicode.com/todos
8. File navigation with NETRW
9. Find and grep commands within vim
10. Quickfix lists
11. Macros

## Going full vim? Ideal setup
1. Dope colorscheme
2. Syntax Highlighting (Treesitter)
3. Fuzzy finding
4. LSP
5. Diagnostics and Formatting
6. Find and Replace
7. Git resolution
8. Debugging??(TBH I haven't explored much about this one in the vim ecosystem)

## Helper links
- https://github.com/neovim/neovim
- Distributions(configurations with sane defaults):
	- https://github.com/LunarVim/LunarVim
	- https://github.com/AstroNvim/AstroNvim
- https://vimsheet.com/
- https://marketplace.visualstudio.com/items?itemName=vscodevim.vim

## Additional Productivity Tools
1. [TMUX](https://github.com/tmux/tmux)
2. [FZF](https://github.com/junegunn/fzf)
3. [RG](https://github.com/BurntSushi/ripgrep)

## Other tools that you could use VIM
1. Browser
2. RunJS
3. Obsidian

## Q/A
