# My neovim config for linux 
- this is my first neovim setup base on videos and other repositories.
- I'm currently using this setup to work on coding wile learning about vim motions.
- Currently using this only for JAVA and C delepment.

---

# Dependencies 

>- [vim-plug](https://github.com/junegunn/vim-plug)
>- [git](https://git-scm.com/download/linux)
>- [nodejs](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04)
>- [python](https://discuss.python.org/t/install-python-3-11-9-on-ubuntu/51093)
>- [java SE-17](https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-22-04)
>- [go-language](https://go.dev/wiki/Ubuntu)
>- [mysql](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwiX98jwqJuIAxUeRzABHe8eKJoQFnoECBkQAQ&url=https%3A%2F%2Fwww.digitalocean.com%2Fcommunity%2Ftutorials%2Fhow-to-install-mysql-on-ubuntu-20-04&usg=AOvVaw2Ssfe7KMHb7SIQRGdq56XG&opi=89978449)
>- [nerd-fonts](https://www.nerdfonts.com)

---

## Other dependencies
>- neovim: `sudo apt-get install neovim`
>- ripgrep: `sudo apt-get install ripgrep`
>- clang: `sudo apt-get clang-18`
>- gcc: `sudo apt-get install gcc`

---

# Installation 
>- clone the repository inside *"~/.config/"* folder.
>- a new folder is created called *"nvim"*.
>- enter the folder using: `cd .\nvim`
>- inside of "nvim" folder create another folder called: `mkdir plugged`
>- inside of "nvim" folder open with nvim the file `init.vim` or `nvim -p init.vim`
>- when inside of neovim use the command *": PlugInstall"* in order to install the plugins.
>- reload the editor and explore the config

---

# Configuration of coc completion for neovim
>- install coc packages for a variety of languages 
>- in the command line use the following list of languages to install for code completion:
```terminal
CocInstall coc-java coc-pyright coc-json coc-tsserver coc-html coc-eslint coc-sql coc-git coc-css coc-vimlsp coc-lua coc-sh coc-go coc-restclient coc-clangd
```

## Change coc configuration 

>- Java: set up the java path environment variable.
>>- open coc configuration using: `nvim ~/.config/nvim/coc-settings.json`
>>- set up the java run time for code completion: `java.configuration.runtimes`
>>- Change the Java Path variable to: `/usr/lib/jvm/java-path` or use the path to the *jdk* installation.

>- Python: set up the python path environment variable.
>>- open coc configuration using: `nvim ~/.config/nvim/coc-settings.json`
>>- change the python path to the environment variable: `/usr/bin/python3` or use the path to the python installation.

>- clangd: set up the clang lenguage server: use `CocCommand clangd.install`

---

# Discalimer
>- this is my own setup and may have some errors, which is totally fine.
>- this neovim setup is for educational purposes.
