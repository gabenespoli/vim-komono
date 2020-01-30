

" TODO: use execute to set maps, so that prefix can be customized
" if !exists('g:komono_prefix')
"   let g:komono_prefix = '<C-k>'
" endif

" if !exists('g:komono_notes_dir')
"   let g:komono_notes_dir = expand('~/notes')
" endif

" if !exists('g:komono_todo_dir')
"   let g:komono_todo_dir = expand('~/todo')
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
    execute "topleft 15 split ".g:komono_todo_file.""
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
nnoremap <C-k><C-k> :call KomonoTodoToggle()<CR>
nnoremap <C-k>t :edit ~/todo/todo.txt<CR>
nnoremap <C-k>b :edit ~/todo/backlog.txt<CR>
nnoremap <C-k>s :edit ~/todo/someday.txt<CR>
nnoremap <C-k>d :edit ~/todo/done.txt<CR>

" CocList:
if has('nvim')
nnoremap <C-k><C-l> :CocListResume<CR>
nnoremap <C-k><C-r> :CocListResume<CR>
nnoremap <C-k>l :CocList<CR>
nnoremap <C-k><C-b> :CtrlPBuffer<CR>
nnoremap <C-k><C-d> :CocList diagnostics<CR>
nnoremap <C-k><C-g> :CocList grep<CR>
nnoremap <C-k>g     :Ggrep 
nnoremap <C-k><C-m> :CocList marks<CR>
nnoremap <C-k><C-t> :CocList tags<CR>
nnoremap <C-k><C-y> :CocList yank<CR>
endif

" Dates:
nnoremap <C-k>Di "=strftime("%Y-%m-%d")<CR>P
nnoremap <C-k>Da "=strftime("%Y-%m-%d")<CR>p
nnoremap <C-k>DI "=strftime("%Y-%m-%d %H:%M:%S")<CR>P
nnoremap <C-k>DA "=strftime("%Y-%m-%d %H:%M:%S")<CR>p
