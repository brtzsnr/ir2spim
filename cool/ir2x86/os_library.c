/*
 * Andrei Homescu (c) 2010
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int __iregs[2];
static char sbuf[64];

#define VI0     (__iregs[0])
#define VI1     (__iregs[1])

void __alloc__()
{
    VI0 = (int)malloc(VI0);
}

void __abort__()
{
    exit(VI0);
}

void __outInt__()
{
    printf("%d", VI0);
}

void __outString__()
{
    int i;
    for( i = 0 ; i < VI1 ; i++ )
        putchar(*(char*)(VI0 + i));
}

void __inInt__()
{
    scanf("%d", &VI0);
}

void __inString__()
{
    fgets(sbuf, 64, stdin);
    VI0 = (int)sbuf;
    VI1 = strlen(sbuf); 
}

