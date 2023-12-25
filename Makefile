
sass_files := $(shell find . -name "*.scss")

.PHONY: style
stylesheets/style.css: $(sass_files)
	cd stylesheets; ./build.sh

style: stylesheets/style.css

.PHONY: push_io
push_io:
	git push assaf.io +io:master
