KERNEL_BUILD := /home/mirage/android/kernel/kernel_archos_22/linux
KERNEL_CROSS_COMPILE := /home/mirage/android/kernel/kernel_archos_22/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-
EXTRA_CFLAGS  := -DOMAP36XX -DSMARTREFLEX
FILENAME := overclock

obj-m += $(FILENAME).o

all:
	make -C $(KERNEL_BUILD) CROSS_COMPILE=$(KERNEL_CROSS_COMPILE) M=$(PWD) modules
	$(KERNEL_CROSS_COMPILE)strip --strip-debug $(FILENAME).ko
	mv $(FILENAME).ko $(FILENAME)_archos_22.ko

clean:
	make -C $(KERNEL_BUILD) M=$(PWD) clean 2> /dev/null
	rm -f modules.order *~
