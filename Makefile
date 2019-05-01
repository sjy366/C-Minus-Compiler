20131565 : main.o util.o lex.yy.o cm.tab.o
	gcc -W -o 20131565 main.o util.o lex.yy.o cm.tab.o
main.o : main.c lex.yy.c cm.tab.c cm.tab.h
	gcc -W -c main.c
util.o : util.c lex.yy.c cm.tab.c cm.tab.h
	gcc -W -c util.c
lex.yy.o : lex.yy.c cm.tab.c cm.tab.h
	gcc -W -c lex.yy.c
lex.yy.c : cm.l cm.tab.c cm.tab.h
	flex cm.l
cm.tab.o : cm.tab.c cm.tab.h
	gcc -W -c cm.tab.c
cm.tab.c cm.tab.h : cm.y
	bison -d -v cm.y
clean:
	rm 20131565 main.o util.o lex.yy.o lex.yy.c cm.tab.o cm.tab.c cm.tab.h cm.output
