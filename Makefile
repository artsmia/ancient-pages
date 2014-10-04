index:
	markdown Readme.md > index.html

fix_artsmia_org_links:
	sed -i 's|http://www.artsmia.org/|http://artsmia.github.io/ancient-pages/1/|' 2/*.html
