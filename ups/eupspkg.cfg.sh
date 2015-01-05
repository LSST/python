config()
{
	# Verify that a compatible module can be found exists
	./scripts/check_python -v | eups_console

        echo "PYTHON DIR"
        echo $PYTHON

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		die "Failed to find a compatible externally provided Python 2.7."
	fi
}

prep() { :; }
build() { :; }
