.PHONY: pdbbind_v2015_compact

pdbbind_v2015_compact.tar.bz2:
	cat pdbbind_v2015_compact_split/* > $@

pdbbind_v2015_compact: pdbbind_v2015_compact.tar.bz2
	tar jxvf $<

