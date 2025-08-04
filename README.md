## vim0-debugwin

Are you tired debugging your vim9script with `echom`? Use this small plugin:
```
 ________________
|                |
| var a = 'hej.' |
| D a            |
|                |
|________________|
| hej.           |
|________________|
```
## Installation[^1]

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone https://github.com/wakodiwe/vim9-debugwin
    vim -u NONE -c "helptags vim9-debugwin/doc" -c q

## License[^1]

Copyright © Wako Diwe.  Distributed under the same terms as Vim itself.
See `:help license`.

[^1]: Shameless stolen from T. Pope

