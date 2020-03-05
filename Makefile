
serve ::
	nikola serve -b

build : *
	nikola build

push : ./output/index.html
	rsync -av ./output/ ../repos/afalaize.github.io/

errase :
	rm -r output
