

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
nnoremap <C-k><C-n> :edit ~/notes/temp.md<CR>
nnoremap <C-k>-     :edit ~/notes<CR>
nnoremap <C-k><C-o> :edit ~/notes/<C-d>
nnoremap <C-k><C-p> :CtrlP ~/notes/<CR>

" open today's journal
nnoremap <C-k><C-j> :edit ~/notes/journal_<C-R>=strftime("%Y-%m-%d")<CR>.md<CR>
nnoremap <C-k><CR>  :edit ~/notes/journal_<C-R>=strftime("%Y-%m-%d")<CR>.md<CR>

" open todo files
nnoremap <C-k><C-t> :edit ~/todo/todo.txt<CR>
nnoremap <C-k><C-b> :edit ~/todo/backlog.txt<CR>
nnoremap <C-k><C-d> :edit ~/todo/done.txt<CR>
nnoremap <C-k><C-s> :edit ~/todo/someday.txt<CR>

" paste dates
nnoremap <C-k>Di "=strftime("%Y-%m-%d")<CR>P
nnoremap <C-k>Da "=strftime("%Y-%m-%d")<CR>p
nnoremap <C-k>DI "=strftime("%Y-%m-%d %H:%M:%S")<CR>P
nnoremap <C-k>DA "=strftime("%Y-%m-%d %H:%M:%S")<CR>p
