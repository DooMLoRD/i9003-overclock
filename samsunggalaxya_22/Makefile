KERNEL_BUILD := /home/mirage/android/kernel/kernel_samsunggalaxya_22/kernel/android-2.6.32.9
KERNEL_CROSS_COMPILE := arm-none-linux-gnueabi-
EXTRA_CFLAGS := -DSMARTREFLEX
FILENAME := overclock

obj-m += $(FILENAME).o

all:
	make -C $(KERNEL_BUILD) CROSS_COMPILE=$(KERNEL_CROSS_COMPILE) M=$(PWD) modules
	$(KERNEL_CROSS_COMPILE)strip --strip-debug $(FILENAME).ko
	mv $(FILENAME).ko $(FILENAME)_samsunggalaxya_22.ko

clean:
	make -C $(KERNEL_BUILD) M=$(PWD) clean 2> /dev/null
	rm -f modules.order *~
