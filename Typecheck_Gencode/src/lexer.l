%option noyywrap
%{
    #define YY_NO_UNPUT
    #define YY_NO_INPUT

    #include "parser.h"
    #include <ostream>
    #include <fstream>
    #include <string>
    using namespace std;

    extern FILE *yyin; 
    extern FILE *yyout;

    extern bool dump_tokens;

    void DEBUG_FOR_LAB4(std::string s)
    {
    }
%}

DECIMIAL ([1-9][0-9]*|0)
ID [[:alpha:]_][[:alpha:][:digit:]_]*
EOL (\r\n|\n|\r)
WHITE [\t ]

OCT 0([1-7][0-7]*)
HEX 0(x|X)([1-9a-fA-F][0-9a-fA-F]*)

LINECOMMENT \/\/[^\n]*

BLOCKCOMMENTbegin \/\*
BLOCKCOMMENTend \*\/
BLOCKCOMMENTtext .|\n
%x BLOCKCOMMENT

%%

{LINECOMMENT} {}

{BLOCKCOMMENTbegin} {
    BEGIN BLOCKCOMMENT;
}

<BLOCKCOMMENT>{BLOCKCOMMENTtext} {}

<BLOCKCOMMENT>{BLOCKCOMMENTend} { 
    BEGIN INITIAL;	
}

"int" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("INT\tint");
    return INT;
}
"void" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("VOID\tvoid");
    return VOID;
}
"if" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("IF\tif");
    return IF;
};
"else" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ELSE\telse");
    return ELSE;
};
"return" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RETURN\treturn");
    return RETURN;
}

"=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ASSIGN\t=");
    return ASSIGN;
}
"<" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LESS\t<");
    return LESS;
}
"+" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ADD\t+");
    return ADD;
}
";" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("SEMICOLON\t;");
    return SEMICOLON;
}
"(" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LPAREN\t(");
    return LPAREN;
}
")" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RPAREN\t)");
    return RPAREN;
}
"{" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LBRACE\t{");
    return LBRACE;
}
"}" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RBRACE\t}");
    return RBRACE;
}
"const" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("CONST\tconst");
    return CONST;
}
"while" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("WHILE\twhile"); 
    return WHILE;
}
"break" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("BREAK\tbreak"); 
    return BREAK;
}
"continue" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("CONTINUE\tcontinue"); 
    return CONTINUE;
}
">" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("GREATER\t>"); 
    return GREATER;
}
">=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("GREATERorEQUAL\t>="); 
    return GREATERorEQUAL;
}
"<=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LESSorEQUAL\t<="); 
    return LESSorEQUAL;
}
"==" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("EQUAL\t=="); 
    return EQUAL;
}
"!=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("UNEQUAL\t!="); 
    return UNEQUAL;
}
"||" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("OR\t||"); 
    return OR;
}
"&&" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("AND\t&&"); 
    return AND;
}
"-" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("SUB\t-"); 
    return SUB;
}
"*" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MULTI\t*"); 
    return MULTI;
}
"/" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("DIVIDE\t/"); 
    return DIVIDE;
}
"%" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MOD\t%"); 
    return MOD;
}
"!" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("NOT\t!"); 
    return NOT;
}
"[" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LSQUAREBRACKET\t[");
    return LSQUAREBRACKET;
}
"]" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RSQUAREBRACKET\t]");
    return RSQUAREBRACKET;
}
"," {
    if(dump_tokens)
        DEBUG_FOR_LAB4("COMMA\t,"); 
    return COMMA;
}
"getint" {
    if(dump_tokens) DEBUG_FOR_LAB4("ID\tgetint");
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::intType, {});//返回类型int，无参数
    SymbolTable* globalTable;    //全域符号表
    for(globalTable = identifiers;globalTable->getPrev();globalTable = globalTable->getPrev()); //全域符号表
    SymbolEntry* entry = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globalTable->install(yytext, entry);
    return ID;
}
"getch" {
    if(dump_tokens) DEBUG_FOR_LAB4("ID\tgetch");
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::intType, {});//返回类型int，无参数
    SymbolTable* globalTable;    //全域符号表
    for(globalTable = identifiers;globalTable->getPrev();globalTable = globalTable->getPrev()); //全域符号表
    SymbolEntry* entry = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globalTable->install(yytext, entry);
    return ID;
}
"putint" {
    if(dump_tokens) DEBUG_FOR_LAB4("ID\tputint");
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec; //形参类型表
    vec.push_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, vec);//返回类型void，参数表[int]
    SymbolTable* globalTable;    //全域符号表
    for(globalTable = identifiers;globalTable->getPrev();globalTable = globalTable->getPrev()); //全域符号表
    SymbolEntry* entry = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globalTable->install(yytext, entry);
    return ID;
}
"putch" {
    if(dump_tokens) DEBUG_FOR_LAB4("ID\tputch");
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> vec; //形参类型表
    vec.push_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, vec);//返回类型void，参数表[int]
    SymbolTable* globalTable;    //全域符号表
    for(globalTable = identifiers;globalTable->getPrev();globalTable = globalTable->getPrev()); //全域符号表
    SymbolEntry* entry = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globalTable->install(yytext, entry);
    return ID;
}
"starttime" {
    if(dump_tokens) DEBUG_FOR_LAB4("ID\tstarttime");

    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::voidType, {});//返回类型void，无参数
    SymbolTable* globalTable;    //全域符号表
    for(globalTable = identifiers;globalTable->getPrev();globalTable = globalTable->getPrev()); //全域符号表
    SymbolEntry* entry = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globalTable->install(yytext, entry);
    return ID;
   
}
"stoptime" {
    if(dump_tokens) DEBUG_FOR_LAB4("ID\tstoptime");

    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::voidType, {});//返回类型void，无参数
    SymbolTable* globalTable;    //全域符号表
    for(globalTable = identifiers;globalTable->getPrev();globalTable = globalTable->getPrev()); //全域符号表
    SymbolEntry* entry = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globalTable->install(yytext, entry);
    return ID;
}



{DECIMIAL} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    yylval.itype = atoi(yytext);
    return INTEGER;
}
{OCT} {
    char str[50]={0};
    int i=1;
    int dec=0;
    while(*(yytext+i)!='\0')
    {
        dec=*(yytext+i)-'0'+dec*8;
        i++;
    }
    if(dump_tokens)
        sprintf(str,"OCT\t%d",dec);
        DEBUG_FOR_LAB4(str);
    yylval.itype = dec;
    return INTEGER;
}
{HEX} {
    char str[50]={0};
    int i=2;
    int dec=0;
    while(*(yytext+i)!='\0')
    {
        if( (*(yytext+i)>='a') && (*(yytext+i)<='f') )
            dec=*(yytext+i)-87 +dec*16;
        else 
        if( (*(yytext+i)>='A') && (*(yytext+i)<='F') )
        {
            dec=*(yytext+i)-55+dec*16;
        }
        else
        {
            dec=*(yytext+i)-'0'+dec*16;
        }
        i++;
    }
    if(dump_tokens)
        sprintf(str,"HEX\t%d",dec);
        DEBUG_FOR_LAB4(str);
    yylval.itype = dec;
    return INTEGER;
}

{ID} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    return ID;
}
{EOL} yylineno++;
{WHITE}
%%
