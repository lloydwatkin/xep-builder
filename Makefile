index.html:
	if [ -e $@ ]; then rm $@; fi;
	./gatherFiles.sh
	xsltproc --xinclude --output $@ xep.xsl built.xml; if [ $$? -ne 0 ]; then echo "xsltproc build failed"; exit 1; fi;
	sed -i s/{{DATE}}/`date +%Y-%m-%d`/g $@
	sed -i s/{{YEAR}}/`date +%Y`/g $@