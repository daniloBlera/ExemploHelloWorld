TARGET_MODULE := hello
ifneq ($(KERNELRELEASE),)
	obj-m := $(TARGET_MODULE).o
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build

	# Não utilizar diretórios contendo espaços
	PWD := $(shell pwd)

.PHONY : clean

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD)

clean:
	$(RM) *.ko .*.ko.cmd *.mod.c *.mod.o .*.mod.o.cmd *.o .*.o.cmd Module.symvers modules.order
	$(RM) -r .tmp_versions/

install:
	insmod ./$(TARGET_MODULE).ko

uninstall:
	rmmod $(TARGET_MODULE)
endif

