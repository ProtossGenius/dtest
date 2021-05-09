##Tail
prebuild:

debug:

qrun:
test:

install:
	cd build && cmake .. && sudo make install
	sudo cp ./update /usr/local/bin/importcpp
clean:

publish_release: install
	git checkout release
	rm -rf ./lib/* ./include/*
	cp -r /usr/local/lib/libsmdtest.a ./lib
	cp -r /usr/local/include/smdtest ./include
	git add .
	git commit -m "publish_release"
	git push
	git checkout -
