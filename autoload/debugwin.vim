vim9script
# Plugin: vim9-debugwin - autoload/debugwin.vim
# Repository:  https://github.com/wakodiwe/vim9-debugwin
# Maintainer: Wako Diwe <wakodiwe@gmail.com>
# Last Update: 2025-08-04

def Open() # 
    :5new [DEBUGWIN]
    call Setoptions()
enddef

def Setoptions() # 
    setlocal bufhidden=wipe
    setlocal buftype=nofile
    setlocal nobuflisted
    setlocal nocursorcolumn
    setlocal nocursorline
    setlocal nolist
    setlocal noswapfile
enddef

def Write(text: any) # 
    setlocal modifiable
    # :silent :0put =text
    :silent :0put =text
    :silent :+1d
    setlocal nomodifiable
enddef

export def DebugWin(text: string) # 
    var last_bufnr = bufnr()

    if bufnr('[DEBUGWIN]') == -1
        call Open()
    elseif bufnr('[DEBUGWIN]') != bufnr()
        call win_gotoid(win_findbuf(bufnr('[DEBUGWIN]'))[0])
    endif

    call Write(text)
    call win_gotoid(win_findbuf(bufnr(last_bufnr))[0])
enddef
