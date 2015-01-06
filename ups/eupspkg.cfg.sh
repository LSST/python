echo "starting euspkg.cfg.sh -- SFD"

config()
{
	# Verify that a compatible module can be found exists
	./scripts/check_python -v | eups_console

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided Python 2.7."
	fi

}

prep() { :; }
build() { :; }

install()
{
	pp=$(which python | sed 's/python//g' | sed 's/bin\///g')
	pp=$pp'lib'
	export DYLD_FALLBACK_LIBRARY_PATH=$pp:$DYLD_FALLBACK_LIBRARY_PATH
	echo "DYLD_FALLBACK_LIBRARY_PATH(eups)"
	echo $DYLD_FALLBACK_LIBRARY_PATH
	default_install
}

echo "ending eupspkg.cfg.sh -- SFD"
