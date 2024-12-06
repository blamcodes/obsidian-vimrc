" .obsidian.vimrc
"
" A small .vimrc for Obsidian vim bindings
"
" To enable this file, you must install the Vimrc Support plugin for Obsidian:
" https://github.com/esm7/obsidian-vimrc-support
"_________________________________________________________________________

" Yank to system clipboard
set clipboard=unnamed 

" Quickly remove search highlights
nmap <F9> :nohl<CR>

" Remap ESC
imap jk <Esc> 

unmap <Space>
"________________________________________
" Navigation
"________________________________________

"j and k navigate visual lines rather than logical ones
nmap j gj<CR> 
nmap k gk<CR>
" Go to beginning and ending of lines.
nmap H ^<CR>
nmap L $<CR>

" Tab Navigation
exmap tabnext obcommand workspace:next-tab
nmap gt :tabnext<CR>
exmap tabprev obcommand workspace:previous-tab
nmap gT :tabprev<CR>

" Link Navigation
exmap followlink obcommand editor:follow-link
nmap gd :followlink<CR>
exmap forward obcommand app:go-forward
unmap <C-i>
nmap <C-i> :forward<CR>

unmap <C-o>
exmap back obcommand app:go-back
nmap <C-o> :back<CR>

" Jump to next/previous Markdown header
exmap nextHeading jsfile mdHelpers.js {jumpHeading(true)}
exmap prevHeading jsfile mdHelpers.js {jumpHeading(false)}
nmap ]] :nextHeading<CR>
nmap [[ :prevHeading<CR>

" Navigate next/previous links with Tab/Shift + Tab
exmap nextLink jsfile mdHelpers.js {jumpNextLink(true)}
exmap prevLink jsfile mdHelpers.js {jumpNextLink(false)}
nmap <Tab> :nextLink<CR>
nmap <S-Tab> :prevLink<CR>

exmap followlink obcommand editor:follow-link
nmap <CR> :followlink<CR>

"________________________________________
" Search Commands
"________________________________________
exmap globalSearch obcommand global-search:open
nmap <Space>fg :globalSearch<CR>
exmap search obcommand editor:open-search
nmap <Space>fs :search<CR>

"________________________________________
" Editor Commands
"________________________________________
" window controls
exmap wq obcommand workspace:close
exmap q obcommand workspace:close
nmap <Space>q :q

exmap focusRight obcommand editor:focus-right
nmap <C-w>l :focusRight<CR>

exmap focusLeft obcommand editor:focus-left
nmap <C-w>h :focusLeft<CR>

exmap focusTop obcommand editor:focus-top
nmap <C-w>k :focusTop<CR>

exmap focusBottom obcommand editor:focus-bottom
nmap <C-w>j :focusBottom<CR>

exmap splitVertical obcommand workspace:split-vertical
nmap <C-w>v :splitVertical<CR>

exmap splitHorizontal obcommand workspace:split-horizontal
nmap <C-w>s :splitHorizontal<CR>

" New File
exmap newfile obcommand file-explorer:new-file
nmap <Space>n :newfile<CR>

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold<CR>
nmap zc :togglefold<CR>
nmap za :togglefold<CR>

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>

exmap foldall obcommand editor:fold-all
nmap zM :foldall<CR>

" Open File Explorer
exmap fileexplorer obcommand file-explorer:open
nmap <Space>f :fileexplorer<CR>

" Map pasteinto to Alt-p
map <Space><Space>p :pasteinto<CR>

" Open quick switcher
exmap quickswitcher obcommand switcher:open
nmap <Space>p :quickswitcher<CR>

" Open Command Palette
exmap commandpalette obcommand command-palette:open
nmap <Space>b :commandpalette<CR>

" " Surround links automatically
" exmap surround_wiki surround [[ ]]
" map [[ :surround_wiki
