#!/bin/bash
# Install Zsh, Tmux, Openssh, Net-tools
sudo apt -y install zsh tmux net-tools openssh-server git

# Install vim
sudo apt -y install vim
# Install vim--Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

# Install oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# Install zsh-completion
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
# Add zsh into /etc/shells
sudo sh -c "echo `which zsh` >> /etc/shells"
# Change shell to zsh
chsh -s $(which zsh)

# Install Anaconda
chmod 744 Anaconda.sh
./Anaconda.sh 
rm Anaconda.sh
echo "export PATH=$HOME/anaconda3/bin:$PATH" >> ~/.zshrc
source ~/.zshrc

# Setup pip packages
# Optional!! Install Jupyter
pip install jupyter
# Install scipy (SciPy--mathematic tools)
pip install scipy
# Install sklearn (machine learning tools)
pip install sklearn
# Install Python Image Library
pip install Pillow
# Install numpy (numerical tools)
pip install numpy
# Install matplotlib (plot graphical tools)
pip install matplotlib

# Install powerline
pip install powerline-status
# Install psutil
pip install psutil
# Install jedi-vim (Python)
pip install jedi