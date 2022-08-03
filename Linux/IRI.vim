let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-H> :Hexmode
vnoremap  :Hexmode
nnoremap  :Hexmode
nnoremap <silent>  :nohl
nnoremap * *``
noremap - -
noremap = +
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
noremap mz :mark z:exe ":sign place 26 line=" . line(".") . " name=marcaz file=" . expand("%:p")
noremap my :mark y:exe ":sign place 25 line=" . line(".") . " name=marcay file=" . expand("%:p")
noremap mx :mark x:exe ":sign place 24 line=" . line(".") . " name=marcax file=" . expand("%:p")
noremap mw :mark w:exe ":sign place 23 line=" . line(".") . " name=marcaw file=" . expand("%:p")
noremap mv :mark v:exe ":sign place 22 line=" . line(".") . " name=marcav file=" . expand("%:p")
noremap mu :mark u:exe ":sign place 21 line=" . line(".") . " name=marcau file=" . expand("%:p")
noremap mt :mark t:exe ":sign place 20 line=" . line(".") . " name=marcat file=" . expand("%:p")
noremap ms :mark s:exe ":sign place 19 line=" . line(".") . " name=marcas file=" . expand("%:p")
noremap mr :mark r:exe ":sign place 18 line=" . line(".") . " name=marcar file=" . expand("%:p")
noremap mq :mark q:exe ":sign place 17 line=" . line(".") . " name=marcaq file=" . expand("%:p")
noremap mp :mark p:exe ":sign place 16 line=" . line(".") . " name=marcap file=" . expand("%:p")
noremap mo :mark o:exe ":sign place 15 line=" . line(".") . " name=marcao file=" . expand("%:p")
noremap mn :mark n:exe ":sign place 14 line=" . line(".") . " name=marcan file=" . expand("%:p")
noremap mm :mark m:exe ":sign place 13 line=" . line(".") . " name=marcam file=" . expand("%:p")
noremap ml :mark l:exe ":sign place 12 line=" . line(".") . " name=marcal file=" . expand("%:p")
noremap mk :mark k:exe ":sign place 11 line=" . line(".") . " name=marcak file=" . expand("%:p")
noremap mj :mark j:exe ":sign place 10 line=" . line(".") . " name=marcaj file=" . expand("%:p")
noremap mi :mark i:exe ":sign place 9 line=" . line(".") . " name=marcai file=" . expand("%:p")
noremap mh :mark h:exe ":sign place 8 line=" . line(".") . " name=marcah file=" . expand("%:p")
noremap mg :mark g:exe ":sign place 7 line=" . line(".") . " name=marcag file=" . expand("%:p")
noremap mf :mark f:exe ":sign place 6 line=" . line(".") . " name=marcaf file=" . expand("%:p")
noremap me :mark e:exe ":sign place 5 line=" . line(".") . " name=marcae file=" . expand("%:p")
noremap md :mark d:exe ":sign place 4 line=" . line(".") . " name=marcad file=" . expand("%:p")
noremap mc :mark c:exe ":sign place 3 line=" . line(".") . " name=marcac file=" . expand("%:p")
noremap mb :mark b:exe ":sign place 2 line=" . line(".") . " name=marcab file=" . expand("%:p")
noremap ma :mark a:exe ":sign place 1 line=" . line(".") . " name=marcaa file=" . expand("%:p")
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
map <S-F4> :clist
map <S-F3> :cprevious
map <S-F2> :cnext
map <S-F1> :helpgrep 
map <F4> : tabnew 
map <F3> : set scrollopt=
map <F2> : set scrollbind
map <F1> : sign unplace
noremap <S-F8> >
map <S-F7> : prev
map <S-F6> : n
noremap <S-F5> <
noremap <F8> l
noremap <F7> k
noremap <F6> j
noremap <F5> h
noremap <S-F11> o
map <S-F10> : vsplit
map <S-F9> : split
noremap <F12> zl
noremap <F11> 
noremap <F10> 
noremap <F9> zh
vnoremap <C-H> :Hexmode
nnoremap <C-H> :Hexmode
nnoremap <silent> <C-L> :nohl
inoremap  :Hexmode
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backup
set backupdir=~/vim_bak
set binary
set cmdwinheight=25
set display=uhex
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set helplang=en
set highlight=n:n
set hlsearch
set ignorecase
set incsearch
set langnoremap
set nolangremap
set laststatus=2
set listchars=extends:>,precedes:<,eol:$,tab:>-,trail:-,nbsp:%
set nomodeline
set mouse=r
set nrformats=bin,hex
set report=0
set ruler
set shiftwidth=1
set shortmess=
set showcmd
set showmatch
set sidescroll=1
set ttimeout
set ttimeoutlen=100
set undodir=~/vim_undo
set undofile
set undolevels=123456
set wildmenu
set nowrapscan
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Projects/ERT_Employment/SandBox_IRI_2016_Program
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd irisub.for
edit irisub.for
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 140 + 155) / 310)
exe 'vert 2resize ' . ((&columns * 169 + 155) / 310)
argglobal
balt iri_C_interface.c
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:!,:*,:C
setlocal commentstring=!%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'fortran'
setlocal filetype=fortran
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cqt
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\c#\\=\\s*include\\s\\+
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=1
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=.f08,.f03,.f95,.f90,.for,.f,.F,.f77,.ftn,.fpp
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'fortran'
setlocal syntax=fortran
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=72
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 2343 - ((1 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2343
normal! 09|
wincmd w
argglobal
if bufexists("iri_C_interface.c") | buffer iri_C_interface.c | else | edit iri_C_interface.c | endif
balt irisub.for
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal fixendofline
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=1
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 34 - ((33 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 34
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 140 + 155) / 310)
exe 'vert 2resize ' . ((&columns * 169 + 155) / 310)
tabnext 1
badd +1 irisub.for
badd +1 iri_C_interface.c
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
