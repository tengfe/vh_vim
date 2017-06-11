" 简介 {
    "一个简单vim配置方案，包含简单的颜色配置和几个实用的vim插件.
    "           _   _ _    ___  _  _____        __
    "    __   _| | | | |_ / _ \/ |( _ ) \      / /
    "    \ \ / / |_| | __| | | | |/ _ \\ \ /\ / / 
    "     \ V /|  _  | |_| |_| | | (_) |\ V  V /  
    "      \_/ |_| |_|\__|\__\_\_|\___/  \_/\_/   
    "                                             
" }

" 环境设置 {
    "基础设置
        set nocompatible
        filetype off
" }

" Vundle设置 {
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'
        Plugin 'vim-syntastic/syntastic'
        Plugin 'altercation/vim-colors-solarized'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'scrooloose/nerdtree'
        Plugin 'scrooloose/nerdcommenter'
        Plugin 'majutsushi/tagbar'
        Plugin 'mbbill/undotree'
        Plugin 'ctrlpvim/ctrlp.vim'
        Plugin 'tacahiroy/ctrlp-funky'
        Plugin 'godlygeek/tabular'
        Plugin 'tpope/vim-fugitive'
        Plugin 'nathanaelkane/vim-indent-guides'
    call vundle#end()
" }

" 主题设置 {
    " solarized 主题设置 {
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        colorscheme solarized
    " }
" }

"  状态栏设置 {
    if has('statusline')
        set laststatus=2
        set statusline=%<%f\ 
        set statusline+=%w%h%m%r
        set statusline+=\ [%{&ff}/%Y]
        set statusline+=\ [%{getcwd()}]
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%
    endif 
"  }

" 基础设置 {
    set background=dark
    filetype plugin indent on
    syntax on
    set mouse=a
    set mousehide

    scriptencoding utf-8

    set shortmess=atI
    set viewoptions=folds,options,cursor,unix,slash
    set virtualedit=onemore
    set history=500
    set spell
    set hidden
    set guifont=Hack\ 12

    set iskeyword-=#
    set iskeyword-=-
    set iskeyword-=.

    set backup
    if has('persistent_undo')
        set undofile
        set undolevels=1000
        set undoreload=10000
    endif
    set tabpagemax=15
    set showmode
    set noshowmode
    set cursorline

    highlight clear SingColumn
    highlight clear LineNr

    if has('cmdline_info')
        set ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
        set showcmd
    endif

    set noerrorbells
" }

" 编辑设置 {
    set backspace=indent,eol,start
    set linespace=0
    set number
    set showmatch
    set matchpairs+=<:>
    set incsearch
    set hlsearch
    set winminheight=0
    set ignorecase
    set smartcase
    set wildmenu
    set wildmode=list:longest,full
    set whichwrap=h,l,b,s,<,>,[,]
    set scrolljump=5
    set scrolloff=3
    set foldenable
    set list
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
    set foldmethod=marker
    set foldmarker={,}
    set foldlevel=0
    set nowrap
    set autoindent
    set smartindent
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set nojoinspaces
    set splitright
    set splitbelow
    set pastetoggle=<F12>
" }

" GVim设置 {
    if has('gui_running')
        set guioptions-=T
        set guioptions-=r
        "set guioptions-=l
        
        "set guiheadroom=0
        set lines=40
    else
        if &term == 'xterm' || &term == 'screen'
            set t_Co=256
        endif
    endif
" }

" 键位设置 {
    " Leader Map {
        let mapleader=","
        let g:mapleader=","
    " }

    " 窗口切换 {
        map <C-H> <C-W>h<C-W>_
        map <C-J> <C-W>j<C-W>_
        map <C-K> <C-W>k<C-W>_
        map <C-L> <C-W>l<C-W>_
    " }

    " YouCompleteMe设置 {
        nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
        nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
        nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
        nmap <leader>yl :YcmDiags<CR>
    " }

    " NERDTree设置 {
        nmap <leader>n :NERDTreeToggle<CR>

    " }

    " Tagbar设置 {
         nnoremap <silent> <leader>t :TagbarToggle<CR>
    " }

    "undotree {
        nnoremap <Leader>u :UndotreeToggle<CR>
    "}

    " ctrlp设置 {
        nnoremap <Leader>fu :CtrlPFunky<Cr>
    " }

    " fugitive设置 {
        nnoremap <silent> <leader>gs :Gstatus<CR>
        nnoremap <silent> <leader>gd :Gdiff<CR>
        nnoremap <silent> <leader>gc :Gcommit<CR>
        nnoremap <silent> <leader>gb :Gblame<CR>
        nnoremap <silent> <leader>gl :Glog<CR>
        nnoremap <silent> <leader>gp :Git push<CR>
        nnoremap <silent> <leader>gr :Gread<CR>
        nnoremap <silent> <leader>gw :Gwrite<CR>
        nnoremap <silent> <leader>ge :Gedit<CR>
        nnoremap <silent> <leader>gi :Git add -p %<CR>
        nnoremap <silent> <leader>gg :SignifyToggle<CR>
    " }
" }

" 插件设置 {
    " Airline设置 {
        let g:airline_theme="solarized"
        let g:airline_solarized_bg='dark'
        let g:airline_powerline_fonts = 1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#buffer_nr_show = 1
        let g:airline#extensions#whitespace#enabled = 0
        let g:airline#extensions#whitespace#symbol = '!'
    " }

    " YouCompleteMe设置 {
        let g:ycm_error_symbol = '>>'
        let g:ycm_warning_symbol = '>*'
        let g:acp_enableAtStartup = 0

        let g:ycm_collect_identifiers_from_tags_files = 1

        let g:UltiSnipsExpandTrigger = '<C-j>'
        let g:UltiSnipsJumpForwardTrigger = '<C-j>'
        let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
        let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

        "set completeopt-=preview
    " }

    " NERDTree设置 {
        let g:NERDTreeDirArrowExpandable = '▸'
        let g:NERDTreeDirArrowCollapsible = '▾'
        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let g:NERDTreeWinSize=35
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
    " }

    " Tagbar设置 {
        
    " }

    "undotree设置 {
        let g:undotree_SetFocusWhenToggle=1
    "}

    " CtrlP设置{
        let g:ctrlp_working_path_mode = 'ra'
        let g:ctrlp_custom_ignore = {
                \ 'dir':  '\.git$\|\.hg$\|\.svn$',
                \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
        if executable('ag')
            let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
        elseif executable('ack-grep')
            let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
        elseif executable('ack')
            let s:ctrlp_fallback = 'ack %s --nocolor -f'
        else
            let s:ctrlp_fallback = 'find %s -type f'
        endif
        if exists("g:ctrlp_user_command")
                unlet g:ctrlp_user_command
        endif
        let g:ctrlp_user_command = {
            \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
            \ 'fallback': s:ctrlp_fallback
        \ }

        if isdirectory(expand("~/.vim/bundle/ctrlp-funky/"))
            let g:ctrlp_extensions = ['funky']
        endif
    " }

    " nerdcommenter设置 {
        let g:NERDSpaceDelims = 1
        let g:NERDCompactSexyComs = 1
        let g:NERDDefaultAlign = 'left'
        let g:NERDAltDelims_java = 1
        let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
        let g:NERDCommentEmptyLines = 1
        let g:NERDTrimTrailingWhitespace = 1
    " }

    " indentguide 设置 {
        let g:indent_guides_start_level = 2
        let g:indent_guides_guide_size = 1
        let g:indent_guides_enable_on_vim_startup = 1
    " }

    " syntastic {
        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*

        let g:syntastic_always_populate_loc_list = 1
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_check_on_open = 1
        let g:syntastic_check_on_wq = 0
    " }
" }
