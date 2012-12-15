let g:EasyMotion_leader_key = '<Space>' 
autocmd BufNewFile,BufRead *.scala set filetype=scala

set undofile

set notimeout
set autoindent
set expandtab

let loaded_matchparen = 1
set showmatch
inoremap <C-d> <Del>
nnoremap <C-h> X

inoremap <C-a> <Esc>^i
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
noremap <C-j> <Esc>
noremap! <C-j> <Esc>

nnoremap Y y$

nnoremap s<Space> i<Space><Esc>l   
nnoremap sa ia<Esc>l
nnoremap sb ib<Esc>l
nnoremap sc ic<Esc>l
nnoremap sd id<Esc>l
nnoremap se ie<Esc>l
nnoremap sf if<Esc>l
nnoremap sg ig<Esc>l
nnoremap sh ih<Esc>l
nnoremap si ii<Esc>l
nnoremap sj ij<Esc>l
nnoremap sk ik<Esc>l
nnoremap sl il<Esc>l
nnoremap sm im<Esc>l
nnoremap sn in<Esc>l
nnoremap so io<Esc>l
nnoremap sp ip<Esc>l
nnoremap sq iq<Esc>l
nnoremap sr ir<Esc>l
nnoremap ss is<Esc>l
nnoremap st it<Esc>l
nnoremap su iu<Esc>l
nnoremap sv iv<Esc>l
nnoremap sw iw<Esc>l
nnoremap sx ix<Esc>l
nnoremap sy iy<Esc>l
nnoremap sz iz<Esc>l
nnoremap s1 i1<Esc>l
nnoremap s2 i2<Esc>l
nnoremap s3 i3<Esc>l
nnoremap s4 i4<Esc>l
nnoremap s5 i5<Esc>l
nnoremap s6 i6<Esc>l
nnoremap s7 i7<Esc>l
nnoremap s8 i8<Esc>l
nnoremap s9 i9<Esc>l
nnoremap s0 i0<Esc>l
nnoremap s! i!<Esc>l
nnoremap s@ i@<Esc>l
nnoremap s# i#<Esc>l
nnoremap s$ i$<Esc>l
nnoremap s% i%<Esc>l
nnoremap s^ i^<Esc>l
nnoremap s& i&<Esc>l
nnoremap s* i*<Esc>l
nnoremap s( i(<Esc>l
nnoremap s) i)<Esc>l
nnoremap s- i-<Esc>l
nnoremap s_ i_<Esc>l
nnoremap s= i=<Esc>l
nnoremap s+ i+<Esc>l
nnoremap s[ i]<Esc>l
nnoremap s{ i{<Esc>l
nnoremap s] i]<Esc>l
nnoremap s} i}<Esc>l
nnoremap s\ i\<Esc>l
nnoremap s; i;<Esc>l
nnoremap s: i:<Esc>l
nnoremap s' i'<Esc>l
nnoremap s" i"<Esc>l
nnoremap s, i,<Esc>l
nnoremap s< i<<Esc>l
nnoremap s. i.<Esc>l
nnoremap s> i><Esc>l
nnoremap s/ i/<Esc>l
nnoremap s? i?<Esc>l

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<TAB>"
    else
        return "\<C-N>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

