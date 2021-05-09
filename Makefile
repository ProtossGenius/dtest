##Tail
prebuild:

debug:

qrun:
test:

install:
	cd build && cmake .. && sudo make install
clean:

publish_release: install
	git checkout release
	cp -r /usr/local/lib/libdtest.a ./lib
	cp -r /usr/local/include/dtest ./include
	git add .
	git commit -m "publish_release"
	git push
	git checkout -
