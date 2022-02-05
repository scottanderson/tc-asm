%.assembly: %.asm
	customasm -f annotated -o $@ $<
	sed -i $@ \
	    -e '1,2d' \
	    -e 's/[^|]*|[^|]*|//' \
	    -e 's/^[^;]*\b\([0-9a-f]\{2\}\)\b/0x\1/g' \
	    -e 's/   /     /g' -e 's/;/#/' \
	    -e 's/^ *# \(.\+\):$$/label \1/'

all: sap-count.assembly