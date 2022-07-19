NASM = nasm

QEMU = qemu-system-x86_64 --nographic

TARGET = os.bin

BOOT = boot/

run : $(TARGET)
	$(QEMU) $^

$(TARGET) : $(BOOT)bootsect.asm
	$(NASM) -o $(TARGET) $(BOOT)bootsect.asm