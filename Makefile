set_tmux:
	mkdir -p ~/.config/tmux
	cp -fr ./tmux/* ~/.config/tmux/

set_terminal:
	cp -fr alacritty.toml ~/.config/alacritty/
	cp -fr starship.toml ~/.config/

set_bash:
	cp -fr .bashrc ~
	cp -fr .bash_aliases ~