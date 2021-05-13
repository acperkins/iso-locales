all: en_CA en_GB en_US

en_CA:
	localedef -c -i $@ -f ISO-8859-1 --no-archive $@
	localedef --add-to-archive --replace /usr/lib/locale/$@
	localedef -c -i $@ -f UTF-8 --no-archive $@.utf8
	localedef --add-to-archive --replace /usr/lib/locale/$@.utf8

en_GB:
	localedef -c -i $@ -f ISO-8859-15 --no-archive $@
	localedef --add-to-archive --replace /usr/lib/locale/$@
	localedef -c -i $@ -f UTF-8 --no-archive $@.utf8
	localedef --add-to-archive --replace /usr/lib/locale/$@.utf8

en_US:
	localedef -c -i $@ -f ISO-8859-1 --no-archive $@
	localedef --add-to-archive --replace /usr/lib/locale/$@
	localedef -c -i $@ -f UTF-8 --no-archive $@.utf8
	localedef --add-to-archive --replace /usr/lib/locale/$@.utf8

.PHONY: all en_CA en_GB en_US
