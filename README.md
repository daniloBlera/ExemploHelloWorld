# Hello, World!
Código de exemplo do capítulo 2 do livro *Linux Device Drivers &mdash; 3rd ed.*

# Compilando o módulo
A partir do diretório raíz

```
.
├── cleanup
├── hello.c
├── LICENSE
├── Makefile
└── README.md
```

Compile o módulo `hello` utilizando o comando `make`

```bash
make
```

Se tudo der certo, devem ser criados os seguintes arquivos

```
hello.ko
hello.mod.c
hello.mod.o
hello.o
modules.order
Module.symvers
```

# Inserir módulo *hello*
Tendo sido criado o arquivo de extensão `.ko` após a compilação, instale o módulo executando

```bash
insmod hello.ko
```

Note que o processo de instalação pode necessitar da execução em super-usuário (sudo).

Para confirmar a instalação do módulo, verifique a escrita da mensagem `MODULE 'HELLO' INITIALIZED` no buffer de mensagens do kernel utilizando o `dmesg`:

```bash
dmesg
```
# Remoção módulo
Estando o módulo `hello` inserido, remova-o utilizando

```bash
rmmod hello
```

Assim como `insmod`, o comando `rmmod` requisita a execução com previlégios de super-user (fazendo `sudo rmmod hello`).

Após a remoção, verifique a mensagem de aviso de remoção do módulo no buffer do kernel utilizando o `dmesg`.

