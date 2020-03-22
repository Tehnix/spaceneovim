" -*- mode: vimrc -*-
"vim: ft=vim

function! Layers()
" Configuration Layers declaration.
" Add layers with `Layer '+layername'` and add individual packages
" with `ExtraPlugin 'githubUser/Repo'`.

  Layer '+core/behavior'
  Layer '+core/sensible'
  Layer '+completion/coc' " Or '+completion/deoplete'
  Layer '+completion/snippets'
  Layer '+checkers/ale' " Or '+checkers/neomake'
  Layer '+checkers/quickfix'
  Layer '+nav/buffers'
  Layer '+nav/comments'
  Layer '+nav/files'
  Layer '+nav/fuzzy' " Or '+nav/fzf'
  Layer '+nav/navigation'
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
  "Layer '+lang/haskell'
  "Layer '+lang/rust'
  "Layer '+lang/go'
  "Layer '+lang/fsharp'
  "Layer '+lang/java'
  "Layer '+lang/javascript'
  "Layer '+lang/purescript'
  "Layer '+lang/python'
  "Layer '+lang/ruby'
  "Layer '+lang/php'
  Layer '+lang/vim'

  " Additional plugins.
  ExtraPlugin 'liuchengxu/space-vim-dark'
endfunction

function! UserInit()
" This block is called at the very startup of Spaceneovim initialization
" before layers configuration.

  " Set language server backend to coc.nvim.
  let g:spLspBackend = 'coc-lsp'
  " Show type/doc information when leaving cursor on an item. Also accessible
  " via `SPC l i`.
  let g:spCocHoverInfo = 1
  " Set Haskell backend to LSP.
  let g:spHaskellBackend = 'lsp'

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
