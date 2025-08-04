" Plugin: vim9-debugwin - plugin/vim9-debugwin.vim
" Repository:  https://github.com/wakodiwe/vim9-debugwin
" Maintainer: Wako Diwe <wakodiwe@gmail.com>
" Last Update: 2025-08-04

if !has('vim9script') ||  v:version < 900 || exists('g:loaded_vim9debugwin')
    finish
endif

vim9script

g:loaded_vim9debugwin = true

import autoload 'debugwin.vim'

command! -nargs=1 D debugwin.DebugWin(<args>)
