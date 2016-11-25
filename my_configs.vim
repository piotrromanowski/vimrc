" -----------------------------------------------------------------------
" Download the already available vim config
"   git clone https://github.com/amix/vimrc.git ~/.vim_runtime
"   sh ~/.vim_runtime/install_awesome_vimrc.sh
" Place this file into ~/.vim_runtime/my_configs.vim
" -----------------------------------------------------------------------


set number
set expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Show whitespace
set list

" Highlight anything over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" Breaking bad habbits
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
nnoremap <Left>  <NOP>
nnoremap <Right> <NOP>
nnoremap <Up>    <NOP>
nnoremap <Down>  <NOP>

" Map esc to jk
inoremap jk      <esc>
inoremap <esc>   <NOP>

" NerdTree toggle using Ctrl-n
map <silent> <C-n> :NERDTreeToggle<CR>

" Multiple Cursors remapped
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_quit_key='q'
let g:multi_cursor_insert_maps={'j':1}

" Turn of Syntastic by default
autocmd VimEnter * SyntasticToggleMode

" http://stackoverflow.com/questions/607435/why-does-vim-save-files-with-a-extension
set nobackup
set noswapfile
set nowritebackup

" turn off code folding
set foldlevelstart=99

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27



function! SetupPython()
      " Here, you can have the final say on what is set.  So
      "     " fixup any settings you don't like.
  setlocal softtabstop=2
  setlocal tabstop=2
  setlocal shiftwidth=2
endfunction
command! -bar SetupPython call SetupPython()
