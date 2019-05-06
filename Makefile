.PHONY: pdbbind_v2015_compact

pdbbind_v2015_split:
	mkdir -p pdbbind_v2015_compact_split
	split -d -b 10M pdbbind_v2015_compact.tar.bz2 pdbbind_v2015_compact_split/pdbbind_v2015_compact.

pdbbind_v2015_compact.tar.bz2:
	cat pdbbind_v2015_compact_split/* > $@

pdbbind_v2015_compact: pdbbind_v2015_compact.tar.bz2
	tar jxvf $<

