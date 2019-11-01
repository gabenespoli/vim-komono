

" TODO: use execute to set maps, so that prefix can be customized
" if !exists('g:komono_prefix')
"   let g:komono_prefix = '<C-k>'
" endif

" if !exists('g:komono_notes_dir')
"   let g:komono_notes_dir = '~/notes'
" endif

" if !exists('g:komono_todo_dir')
"   let g:komono_todo_dir = '~/todo'
" endif

if !exists('g:komono_todo_file')
  let g:komono_todo_file = '~/todo/todo.txt'
endif

function KomonoNotesToday()
  execute 'edit '.expand('~').'/notes/'.strftime("%Y-%m-%d").'.txt'
endfunction

function KomonoTodoToggle()
  if bufwinnr(g:komono_todo_file) > 0
    execute bufwinnr(g:komono_todo_file)."wincmd w"
    execute "silent sort"
    execute "write"
    execute "bwipeout ".bufnr(g:komono_todo_file)
  else
    execute "botright 15 split ".g:komono_todo_file.""
    execute "silent sort"
    normal gg
    execute "write"
    set winfixheight
  endif
endfunction

" Notes:
nnoremap <C-k><C-n> :edit ~/notes/temp.txt<CR>
nnoremap <C-k>-     :edit ~/notes<CR>
nnoremap <C-k><C-o> :edit ~/notes/<C-d>
nnoremap <C-k><C-p> :CtrlP ~/notes/<CR>
nnoremap <C-k><C-j> :call KomonoNotesToday()<CR>
nnoremap <C-k><CR>  :call KomonoNotesToday()<CR>

" Todo:
nnoremap <C-k><C-t> :edit ~/notes/todo.txt<CR>
nnoremap <C-k><C-b> :edit ~/notes/backlog.txt<CR>
nnoremap <C-k><C-s> :edit ~/notes/someday.txt<CR>
nnoremap <C-k><C-k> :call KomonoTodoToggle()<CR>

" Dates:
nnoremap <C-k>Di "=strftime("%Y-%m-%d")<CR>P
nnoremap <C-k>Da "=strftime("%Y-%m-%d")<CR>p
nnoremap <C-k>DI "=strftime("%Y-%m-%d %H:%M:%S")<CR>P
nnoremap <C-k>DA "=strftime("%Y-%m-%d %H:%M:%S")<CR>p
