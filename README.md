# Modus Themes

A port of the Emacs themes, a set of accessible themes for GNU Emacs. The
contrast ratio between foreground and background values should always be >=
7:1, which conforms with the WCAG AAA accessibility standard.  This is the
highest standard of its kind.

The Modus themes project consists of two standalone items, one where
dark text is cast on a light backdrop (Modus Operandi) and another where
light text is displayed against a dark background (Modus Vivendi).

## Requirements
- A [terminal](https://gist.github.com/XVilka/8346728) which supports truecolor
- neovim or Gvim/MacVim or vim ≥ 7.4.1799
- The following line in your `init.vim` or `.vimrc` file:

    ```vim
    set termguicolors
    ```

## Installation

- Manual install

Move modus-operandi.vim or modus-vivendi.vim to your vim RunTimePath directory:

    ```bash
    cd modus-themes-vim/colors
    mv modus-*.vim ~/.config/nvim/colors/
    ```
    or for vim
    ```bash
    cd modus-themes-vim/colors
    mv modus-*.vim ~/.vim/colors/
    ```
- Plugin managers: [vim-plug](https://github.com/junegunn/vim-plug):
    - Add `Plug 'chasinglogic/modus-themes-vim'` to your `init.vim` or `.vimrc` file.
    - Run `:PlugInstall` after resourcing/relaunching.

After the installation, configure it as your colorscheme by putting the following line into your `init.vim` or `.vimrc` file:

```vim
colorscheme modus-operandi
```

or for the dark variant

```vim
colorscheme modus-vivendi
```
### Truecolor test

You can run this script to test if your terminal is supported. If the colors blend smoothly like: ![colortest](http://ww3.sinaimg.cn/large/5d4db8f9gw1f8into8gvgj20hf00o0sv.jpg), then you know that you have True Color support.

```bash
awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
}'
```
