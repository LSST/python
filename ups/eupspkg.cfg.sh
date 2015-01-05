config()
{
	# Verify that a compatible module can be found exists
	./scripts/check_python -v | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided Python 2.7."
	fi

	dyldfallback = which python | sed 's/python//g' | sed 's/bin/lib/g'
        
        echo 'DYLD_FALLBACK_LIBRARY_PATH'
        echo $dyldfallback


}

prep() { :; }
build() { :; }
