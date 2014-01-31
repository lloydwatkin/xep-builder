
sections=""

for i in `find ./sections -maxdepth 1 -type f | sort -n`; do
    sections=$sections' <xi:include href="'$i'" xmlns:xi="http://www.w3.org/2001/XInclude" parse="xml" />'
done

echo $sections
cp main.xml built.xml
sed -i 's,{{SECTIONS}},'"$sections"',g' built.xml
