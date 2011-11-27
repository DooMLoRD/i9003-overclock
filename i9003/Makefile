KERNEL_BUILD := <path_to_kernel_folder>
KERNEL_CROSS_COMPILE := <path_to_toolchain_folder>/arm-eabi-4.4.0/bin/arm-eabi-
EXTRA_CFLAGS := -DOMAP36XX
FILENAME := overclock

obj-m += $(FILENAME).o

all:
	make -C $(KERNEL_BUILD) ARCH=arm CROSS_COMPILE=$(KERNEL_CROSS_COMPILE) M=$(PWD) modules
	$(KERNEL_CROSS_COMPILE)strip --strip-debug $(FILENAME).ko
	mv $(FILENAME).ko $(FILENAME)_i9003.ko

clean:
	make -C $(KERNEL_BUILD) M=$(PWD) clean 2> /dev/null
	rm -f modules.order *~
