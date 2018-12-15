# Makefile for JamesM's kernel tutorials.
# The C and C++ rules are already setup by default.
# The only one that needs changing is the assembler 
# rule, as we use nasm instead of GNU as.

SOURCES=boot.o main.o monitor.o common.o descriptor_tables.o isr.o interrupt.o gdt.o timer.o \
        kheap.o paging.o ordered_array.o fs.o initrd.o

CFLAGS=-nostdlib -nostdinc -fno-builtin -fno-stack-protector -m32
LDFLAGS=-Tlink.ld
ASFLAGS=-felf32

all: $(SOURCES) link

clean:
	-rm *.o kernel

link:
	ld -m elf_i386 $(LDFLAGS) -o kernel $(SOURCES)

.s.o:
	nasm $(ASFLAGS) $<
