set_tmux:
	mkdir -p ~/.config/tmux
	cp -fr ./tmux/* ~/.config/tmux/

set_terminal:
	cp -fr alacritty.toml ~/.config/alacritty/
	cp -fr starship.toml ~/.config/

set_bash:
	cp -fr .bashrc ~
	cp -fr .bash_aliases ~

set_no_starship_bash:
	cp -fr ./no_starship_bash/.bashrc ~
	cp -fr .bash_aliases ~