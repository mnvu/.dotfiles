:set noexandtab


.SILENT:
linux: clean
	./bin/linux.sh

clean:
	./bin/cleanup.sh
