all: hello

CCFLAGS=-s -static -nostdlib 

test: hello
	./$< > output.txt
	cmp test-output.txt output.txt

hello: hello.s
	gcc $(CCFLAGS) $< -o $@

clean:
	rm -f hello output.txt
