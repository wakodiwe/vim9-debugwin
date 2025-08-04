vim9script
# Plugin: vim9-debugwin - plugin/vim9-debugwin.vim
# Repository:  https://github.com/wakodiwe/vim9-debugwin
# Maintainer: Wako Diwe <wakodiwe@gmail.com>
# Last Update: 2025-08-04

import autoload 'debugwin.vim'

command! -nargs=1 D debugwin.DebugWin(<args>)
