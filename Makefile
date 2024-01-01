FILE = main
ASSEMBLE = -mno-red-zone -fno-asynchronous-unwind-tables -S -O0

all: assemble

assemble: ${FILE}.c
	gcc ${ASSEMBLE} ${FILE}.c

clean:
	rm *.s
