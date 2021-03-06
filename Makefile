all:
	@echo "Run 'sudo make install' to install the updated locales."

install: en_CA en_GB en_US

en_CA:
	localedef -c -i $@ -f UTF-8 --no-archive $@.utf8
	localedef --add-to-archive --replace /usr/lib/locale/$@.utf8

en_GB:
	localedef -c -i $@ -f UTF-8 --no-archive $@.utf8
	localedef --add-to-archive --replace /usr/lib/locale/$@.utf8

en_US:
	localedef -c -i $@ -f UTF-8 --no-archive $@.utf8
	localedef --add-to-archive --replace /usr/lib/locale/$@.utf8

.PHONY: all install en_CA en_GB en_US
