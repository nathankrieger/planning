.PHONY: default all clean test examples

default: all

all:
	cmake -B build -DCMAKE_BUILD_TYPE=Debug
	cmake --build build

test:
	cmake -B build -DCMAKE_BUILD_TYPE=Debug
	cmake --build build --target test_suite

examples:
	cmake -B build -DCMAKE_BUILD_TYPE=Debug
	cmake --build build --target examples

clean clear:
	rm -rf build