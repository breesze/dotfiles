call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'Yggdroot/indentLine'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/vim-clang-format'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"若安装未完全，需要(到md文件里)执行:call mkdp#util#install()

Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar', { 'on':  'TagbarToggle' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips',{ 'for':['c','cpp','rust', 'html','markdown'] }
Plug 'Yggdroot/LeaderF',{ 'do': './install.sh' }
Plug 'dense-analysis/ale',{ 'for':['c','cpp'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'altercation/vim-colors-solarized'
" Plug 'mhinz/vim-startify'
" Plug 'Chiel92/vim-autoformat'
" Plug 'ycm-core/YouCompleteMe',{ 'for':['c','cpp'] }

call plug#end()

" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" colorscheme
set background=dark
" set t_Co=256
colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

" unnecessary option
" " set t_Co=16
" " let g:solarized_termcolors=256
" colorscheme solarized8

" hi Normal guibg=NONE ctermbg=NONE
" hi NonText ctermbg=none
" highlight clear SignColumn


" 5/8/39/45/201
" highlight SignColumn guibg=blue ctermbg=5
" highlight SignColumn guibg=#1d1d1e ctermbg=5

" markdown-preview.nvim
nmap <C-S-p> <Plug>MarkdownPreviewToggle
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 1
let g:mkdp_browser = 'firefox'
" let g:mkdp_markdown_css = '~/.vim/vim/markdown-preview_vim.css'

" cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
" 文件较大时使用下面的设置高亮模板速度较快，但会有一些小错误
" let g:cpp_experimental_template_highlight = 1

" indentLine
let g:indentLine_enabled = 1
" let g:indentLine_setColors = 1
" let g:indentLine_color_term = 10
" let g:indentLine_bgcolor_term = 20
" let g:indentLine_char = '┆'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" clang-format
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AlignConsecutiveAssignments" : "true",
            \ "AlignConsecutiveDeclarations" : "true",
            \ "AlignConsecutiveMacros" : "true",
            \ "AlignOperands" : "true",
            \ "AlignTrailingComments" : "true",
            \ "AllowAllArgumentsOnNextLine" : "true",
            \ "AllowAllConstructorInitializersOnNextLine" : "true",
            \ "AllowAllParametersOfDeclarationOnNextLine" : "true",
            \ "AllowShortLambdasOnASingleLine" : "All",
            \ "AllowShortLoopsOnASingleLine" : "true",
            \ "AllowShortBlocksOnASingleLine" : "true",
            \ "AllowShortCaseLabelsOnASingleLine" : "true",
            \ "AllowShortFunctionsOnASingleLine" : "Inline",
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AlwaysBreakTemplateDeclarations" : "MultiLine",
            \ "BasedOnStyle" : "llvm",
            \ "BreakConstructorInitializersBeforeComma" : "true",
            \ "IndentWidth" : 4,
            \ "IndentWrappedFunctionNames" : "true",
            \ "IncludeBlocks" : "Regroup",
            \ "TabWidth" : 4,
            \ "UseTab" : "Never",
            \ "SpaceAfterCStyleCast" : "true",
            \ "SpaceBeforeAssignmentOperators" : "true",
            \ "SpaceBeforeCpp11BracedList" : "true",
            \ "SpaceBeforeCtorInitializerColon" : "true",
            \ "SpaceBeforeInheritanceColon" : "true",
            \ "SpaceBeforeParens" : "ControlStatements",
            \ "SpaceBeforeRangeBasedForLoopColon" : "true",
            \ "SpaceInEmptyParentheses" : "true",
            \ "SpacesInParentheses" : "false",
            \ "SpacesInContainerLiterals" : "true",
            \ "SpacesInSquareBrackets" : "true",
            \ "Standard" : "C++11",
            \ "IncludeCategories" : [{"Regex":"^<..h>", "Priority":1},{"Regex":"^<.>", "Priority":20},{"Regex":".*", "Priority":3}]}


" no work
"SpaceBeforeSquareBrackets  true
"SpacesInConditionalStatement  true
"SpaceInEmptyBlock  true

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>vv :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>vv :ClangFormat<CR>

" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_cpp = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'cpp': { 'left': '//'} }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" Leaderf
let g:Lf_HideHelp = 1
let g:Lf_ShowHidden = 1
let g:Lf_UseCache = 0
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_ReverseOrder = 1
"let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
"let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_PreviewHorizontalPosition = 'cursor'
let g:Lf_WindowHeight = 0.30
" let g:Lf_PopupWidth = 0.20
" let g:Lf_PopupHeight= 0.2
let g:Lf_PreviewPopupWidth = 100
let g:Lf_ShowRelativePath = 0
let g:Lf_StlColorscheme = 'powerline'
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "hack 2" }
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0,'Colorscheme':1}
"let g:Lf_PreviewResult = {'Function':0, 'BufTag':1,'File':1}

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fd :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>fj :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fk :Leaderf bufTag --right<CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>fh :LeaderfTag<cr>
noremap <leader>fk :LeaderfFunction!<CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" UndoTree
nnoremap <A-f> :UndotreeToggle<CR>
let g:undotree_WindowLayout = 3

" NerdTree
map <A-q> :NERDTreeToggle<CR>
" " bug:Nerdtree自动关闭让ycm无法关闭,需要自己qa
" " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd StdinReadPre * let s:std_in=1
" " empty file
" " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" " directory
" autocmd vimenter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" autocmd vimenter * NERDTree | wincmd p
" "autocmd vimenter * wincmd p

let g:NERDTreeWinSize=25
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
"let NERDTreeShowLineNumbers=1
"let NERDTreeAutoCenter=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略以下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
"let NERDTreeShowBookmarks=1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

" snippets
let g:UltiSnipsExpandTrigger = '<C-l>'

" ale
noremap <A-o> :ALEToggle<CR>
let g:ale_enabled=0

nmap <silent> <A-,> <Plug>(ale_previous_wrap)
nmap <silent> <A-m> <Plug>(ale_next_wrap)
let g:ale_linters = {
            \'cpp':['clang'],
            \'c':['clang'],
            \}
let g:ale_linters_explicit = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '=='
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'

let g:ale_sign_column_always = 0
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_clang_options = '-Weverything -O2 -std=c99'
let g:ale_cpp_clang_options = '-Weverything -O2 -std=c++14'

" 👽💣✗⚡🐕🐦🐈🐟¿💩🎭🌡🕯☢️⚠️☣️☯️⛔️♨️™📈📉
" let g:ale_sign_error = '💣'
" let g:ale_sign_warning = '✗™'
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
" let g:ale_sign_warning = '👽'

"highlight clear ALEErrorSign
"highlight clear ALEWarningSign "
"9 4236 13
highlight ALEErrorSign ctermfg=9  "cterm=underline
highlight ALEWarningSign ctermfg=6 "cterm=underline
" highlight ALEErrorSign guibg=#232526 guifg=#ff3f3f
" highlight ALEWarningSign guibg=#232526 guifg=#0055ff

hi! clear SpellBad
hi! clear SpellCap
" hi! SpellBad cterm=undercurl
" hi! SpellCap cterm=undercurl
" hi! SpellBad
" hi! SpellCap
"highlight ALEError guisp=green cterm=undercurl
"highlight ALEWarning guisp=green cterm=undercurl

"let g:ale_change_sign_column_color=1
"let g:ale_fix_on_save = 1

" snippets ultisnips
"ActivateAddons vim-snippets ultisnips


"lightline
set showtabline=2
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline = {
            \ 'colorscheme': 'molokai2',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             ['readonly', 'filename','modified', 'charvaluehex' ] ],
            \   'right': [ [ 'lineinfo' ],
            \              [ 'percent' ],
            \              [ 'fileformat', 'fileencoding', 'filetype', 'totallinenum' ] ]
            \ },
            \ 'component': {
            \   'charvaluehex': '%b-0x%B',
            \   'method': 'NearestMethodOrFunction',
            \   'totallinenum': '%L'
            \ },
            \ }
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
" let g:lightline.separator = { 'left': '', 'right': '' }
" let g:lightline.subseparator = { 'left': '>', 'right': '>' }
" autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" easymotion
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
" nmap ss <Plug>(easymotion-s2)
nmap s <Plug>(easymotion-s)
nmap <A-h> <Plug>(easymotion-linebackward)
nmap <A-j> <Plug>(easymotion-j)
nmap <A-k> <Plug>(easymotion-k)
nmap <A-l> <Plug>(easymotion-lineforward)
nmap <A-.> <Plug>(easymotion-repeat)

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 0

let g:multi_cursor_start_word_key      = '<C-n>'	" 选中一个
let g:multi_cursor_select_all_word_key = '<A-n>'	" 全选匹配的字符
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'	" 回到上一个
let g:multi_cursor_skip_key            = '<C-m>'	" 跳过当前选中, 选中下一个
let g:multi_cursor_quit_key            = '<Esc>'	" 退出

" " vista.vim
" noremap <A-e> :Vista!!<CR>
"
" function! NearestMethodOrFunction() abort
"     return get(b:, 'vista_nearest_method_or_function', '')
" endfunction;
"
" set statusline+=%{NearestMethodOrFunction()}
"
" let g:vista_echo_cursor_strategy ='floating_win'
" let g:vista_sidebar_width = 25
" " " 设置为0，以禁用光标移动时的回显.
" let g:vista_echo_cursor = 1
" " " 当前游标上显示详细符号信息的时间延迟.
" let g:vista_cursor_delay = 400
" " " 跳转到一个符号时，自动关闭vista窗口.
" let g:vista_close_on_jump = 0
" " "打开vista窗口后移动到它.
" let g:vista_stay_on_open = 1
" " " 跳转到标记后闪烁光标2次，间隔100ms.
" let g:vista_blink = [2, 100]
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"
" let g:vista_default_executive = 'ctags'
" let g:vista_executive_for = {
"   \ 'cpp': 'vim_lsp',
"   \ 'c': 'vim_lsp',
"   \ }
"
" let g:vista_fzf_preview = ['right:50%']
" " " let g:vista_finder_alternative_executives = ['coc']
" let g:vista#renderer#enable_icon = 1

" Tagbar
noremap <A-e> :TagbarToggle<CR>

" gitgutter
set updatetime=100
let g:gitgutter_sign_allow_clobber = 1

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
" nmap ghs <Plug>(GitGutterStageHunk)
" nmap ghu <Plug>(GitGutterUndoHunk)
" nmap ghp <Plug>(GitGutterPreviewHunk)
omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" coc--
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set signcolumn=yes
set shortmess+=c

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"trigger completion.
inoremap <silent><expr> <A-i> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means breakundo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" :"\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
"xmap <leader>f <Plug>(coc-format-selected)
"nmap <leader>f <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>o <Plug>(coc-codeaction-selected)
nmap <leader>o <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
"nmap <leader>ac <Plug>(coc-codeaction)
" Fix autofix problem of current line
"nmap <leader>qf <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
" command! -nargs=0 Format :call CocAction('format')
"
" Use `:Fold` to fold current buffer
" command! -nargs=? Fold :call CocAction('fold', <f-args>)
"
" use `:OR` for organize import of current buffer
" command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
nnoremap <silent> <space>ea :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>ee :<C-u>CocList extensions<cr>
nnoremap <silent> <space>ec :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>eo :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>es :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>ej :<C-u>CocNext<CR>
nnoremap <silent> <space>ek :<C-u>CocPrev<CR>
nnoremap <silent> <space>ep :<C-u>CocListResume<CR>

hi CocErrorSign ctermfg=9
hi CocWarningSign ctermfg=6
