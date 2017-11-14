ifneq ($(KERNELRELEASE),)
	obj-m := hello.o
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build

	# Não utilizar diretórios contendo espaços
	PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
endif

