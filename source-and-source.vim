" Will save file, and Source files even if it is a python file
function! SaveAndSource()
	:w
	let current_filetype = &filetype

	if current_filetype ==? "vim"
		:source %
	elseif current_filetype ==? "python"
		:py3file %
	endif
	source ~/.config/nvim/after/ftplugin/vim/folding.vim
endfunction
