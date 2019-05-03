

" TODO: use execute to set maps, so that prefix can be customized
" if !exists('g:komono_prefix')
"   let g:komono_prefix = '<C-k>'
" endif

" if !exists('g:komono_notes_dir')
"   let g:komono_notes_dir = '<C-k>'
" endif

" if !exists('g:komono_todo_dir')
"   let g:komono_todo_dir = '<C-k>'
" endif

" open notes
nnoremap <C-k><C-n> :edit ~/notes/temp.txt<CR>
nnoremap <C-k>-     :edit ~/notes<CR>
nnoremap <C-k><C-o> :edit ~/notes/<C-d>
nnoremap <C-k><C-p> :CtrlP ~/notes/<CR>

" open today's journal
nnoremap <C-k><C-j> :edit ~/notes/<C-R>=strftime("%Y-%m-%d")<CR>.txt<CR>
nnoremap <C-k><CR>  :edit ~/notes/<C-R>=strftime("%Y-%m-%d")<CR>.txt<CR>

" open todo files
nnoremap <C-k><C-t> :edit ~/notes/todo.txt<CR>
nnoremap <C-k><C-b> :edit ~/notes/backlog.txt<CR>
nnoremap <C-k><C-s> :edit ~/notes/someday.txt<CR>

" paste dates
nnoremap <C-k>Di "=strftime("%Y-%m-%d")<CR>P
nnoremap <C-k>Da "=strftime("%Y-%m-%d")<CR>p
nnoremap <C-k>DI "=strftime("%Y-%m-%d %H:%M:%S")<CR>P
nnoremap <C-k>DA "=strftime("%Y-%m-%d %H:%M:%S")<CR>p
