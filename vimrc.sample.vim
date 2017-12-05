" -*- mode: vimrc -*-
"vim: ft=vim

function! Layers()
" Configuration Layers declaration.
" Add layers with `Layer '+layername'` and add individual packages
" with `ExtraPlugin 'githubUser/Repo'`.

  Layer '+core/behavior'
  Layer '+core/sensible'
  Layer '+completion/nvim-completion-manager' " Or '+completion/deoplete'
  Layer '+completion/snippets'
  Layer '+checkers/ale' " Or '+checkers/neomake'
  Layer '+checkers/quickfix'
  Layer '+nav/buffers'
  Layer '+nav/comments'
  Layer '+nav/files'
  Layer '+nav/fuzzy' " Or '+nav/fzf'
  Layer '+nav/quit'
  Layer '+nav/start-screen'
  Layer '+nav/text'
  Layer '+nav/tmux'
  Layer '+nav/windows'
  Layer '+scm/git'
  Layer '+specs/testing'
  Layer '+tools/language-server'
  Layer '+tools/multicursor'
  Layer '+tools/terminal'
  Layer '+ui/airline'
  Layer '+ui/toggles'

  " Language layers.
  "Layer '+lang/elm'
  "Layer '+lang/haskell' " Set backend with e.g. let g:spHaskellBackend = 'intero', in UserInit
  "Layer '+lang/javascript'
  "Layer '+lang/python'
  "Layer '+lang/ruby'
  Layer '+lang/vim'

  " Additional plugins.
  ExtraPlugin 'liuchengxu/space-vim-dark'
endfunction

function! UserInit()
" This block is called at the very startup of Spaceneovim initialization
" before layers configuration.
  
endfunction

function! UserConfig()
" This block is called after Spaceneovim layers are configured.

  SetThemeWithBg 'dark', 'space-vim-dark', 'violet'
endfunction

" Do NOT remove these calls!
call spaceneovim#init()
call Layers()
call UserInit()
call spaceneovim#bootstrap()
call UserConfig()
