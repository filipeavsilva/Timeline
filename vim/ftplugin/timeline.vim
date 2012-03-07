fu! s:TimelineInitialize()
	set filetype=timeline
	call timeline#NewEntry()
endfunction

if !exists("timeline_autocommands_loaded")
	let timeline_autocommands_loaded = 1
	au! BufNewFile,BufRead *.timeline <SID>s:TimelineInitialize()<CR>
endif
