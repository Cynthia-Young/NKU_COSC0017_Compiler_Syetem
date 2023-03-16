/*maybe final*/

%option noyywrap
%option yylineno
%{
    /*
    * You will need to comment this line in lab5.
    */
    #define ONLY_FOR_LEX

    #ifdef ONLY_FOR_LEX

    #else
    #define YYSTYPE void *
    #include "parser.h"
    #endif

    #define YY_NO_UNPUT
    #define YY_NO_INPUT
    #include <string>

    #ifdef ONLY_FOR_LEX
    #include <ostream>
    #include <fstream>
    using namespace std;
    extern FILE *yyin; 
    extern FILE *yyout;

    void DEBUG_FOR_LAB4(std::string s){
        std::string DEBUG_INFO = "[DEBUG LAB4]: \t" + s + "\n";
        fputs(DEBUG_INFO.c_str(), yyout);
    }
    #endif

    class SymbolList{
        public:
        SymbolList* parent;
        SymbolList* child;
        char list[100][100];
        SymbolList(){parent=NULL; child=NULL;}
    };

    class SymbolListTree{
        public:
        SymbolList *root;
        SymbolList *pre;
        SymbolListTree(){root=new SymbolList; pre=root;}
        void BuildList();
        void BackwardList();
        char* SymbolGet(char *a);
        char* SymbolPut(char *a);
    };

    void SymbolListTree::BuildList()
    {
        SymbolList *ChildList = new SymbolList;
        ChildList->parent=pre;
        pre->child=ChildList;
        pre=ChildList;
    }

    void SymbolListTree::BackwardList()
    {
        pre=pre->parent;
    }

    char* SymbolListTree::SymbolGet(char *a)
    {
        int i=0,k=0;
        SymbolList *pre0=pre;
        char *rt=new char[100];
        rt[0]='\0';
        while(pre0!=NULL)
        {
            for(i=0; i<100&& pre0->list[i][0]!='\0' ;i++)
            {
                if(strcmp(pre0->list[i],a)==0)
                {
                    rt=pre0->list[i];
                }

            }
            if(rt[0]!='\0')
            {
                return rt;
            }
            
            pre0=pre0->parent;
            k++;
        }
        printf("Syntax Error!");
        return NULL;
    
    }

    char* SymbolListTree::SymbolPut(char *a)
    {
        int i=0;
        for(i=0; i<100&& pre->list[i][0]!='\0' ;i++)
        {
            ;
        }
        strcpy(pre->list[i] , a);
        return pre->list[i];
    }

    SymbolListTree sl;
%}

DECIMIAL ([1-9][0-9]*|0)
ID [[:alpha:]_][[:alpha:][:digit:]_]*
EOL (\r\n|\n|\r)
WHITE [\t ]
OCT 0([1-7][0-7]*)
HEX 0(x|X)([1-9a-fA-F][0-9a-fA-F]*)
FloatNUM ([1-9][0-9]*|0)\.[0-9]*

DECLARE (int|float)[\t ]*[[:alpha:]_][[:alpha:][:digit:]_]*


LINECOMMENT \/\/[^\n]*
BLOCKCOMMENTbegin \/\*
BLOCKCOMMENTend \*\/
BLOCKCOMMENTtext .|\n
%x BLOCKCOMMENT

%%

{LINECOMMENT} {}

{BLOCKCOMMENTbegin} {
    #ifdef ONLY_FOR_LEX
 	BEGIN BLOCKCOMMENT;
    #else
    	return BLOCKCOMMENTbegin;
    #endif 
}

<BLOCKCOMMENT>{BLOCKCOMMENTtext} {}

<BLOCKCOMMENT>{BLOCKCOMMENTend} { 
    #ifdef ONLY_FOR_LEX
 	BEGIN INITIAL;
    #else
    	return BLOCKCOMMENTend;
    #endif 	
 } 
"const" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"CONST\tconst\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return CONST;
    #endif
}	
"int" {
    /*
    * Questions: 
    *   Q1: Why we need to return INT in further labs?
    *   Q2: What is "INT" actually?
    */
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"INT\tint\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return INT;
    #endif
}
"void" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"VOID\tvoid\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return VOID;
    #endif 
}

"float" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"FLOAT\tfloat\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return FLOAT;
    #endif
}

"if" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"IF\tif\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return IF;
    #endif
}

"else" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"ELSE\telse\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return ELSE;
    #endif
}

"while" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"WHILE\twhile\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return WHILE;
    #endif
}

"break" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"BREAK\tbreak\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return BREAK;
    #endif
}

"continue" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"CONTINUE\tcontinue\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return CONTINUE;
    #endif
}

"return" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"RETURN\treturn\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return RETURN;
    #endif
}

"=" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"ASSIGN\t=\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return ASSIGN;
    #endif
}
">" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"GREATER\t>\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return GREATER;
    #endif
}
"<" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"LESS\t<\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return LESS;
    #endif
}
">=" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"GREATERorEQUAL\t>=\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return GREATERorEQUAL;
    #endif
}
"<=" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"LESSorEQUAL\t<=\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return LESSorEQUAL;
    #endif
}
"==" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"EQUAL\t==\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return EQUAL;
    #endif
}
"!=" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"UNEQUAL\t!=\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return UNEQUAL;
    #endif
}
"||" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"OR\t||\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return OR;
    #endif
}
"&&" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"AND\t&&\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return AND;
    #endif
}
"+" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"ADD\t+\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return ADD;
    #endif
}
"-" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"SUBTRACT\t-\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return SUBTRACT;
    #endif
}
"*" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"MULTI\t*\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return MULTI;
    #endif
}
"/" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"DIVIDE\t/\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return DIVIDE;
    #endif
}
"%" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"MOD\t/\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return MOD;
    #endif
}
"!" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"NOT\t!\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return NOT;
    #endif
}
";" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"SEMICOLON\t;\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return SEMICOLON;
    #endif
}
"," {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"COMMA\t,\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return COMMA;
    #endif
}
"(" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"LPAREN\t(\t%d",yylineno);
        DEBUG_FOR_LAB4(str); 
    #else
        return LPAREN;
    #endif
}
")" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"RPAREN\t)\t%d",yylineno);
        DEBUG_FOR_LAB4(str);  
    #else
    return RPAREN;
    #endif
}
"{" {
    sl.BuildList();

    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"LBRACE\t{\t%d",yylineno);
        DEBUG_FOR_LAB4(str);   
    #else
        return LBRACE;
    #endif
}
"}" {
    sl.BackwardList();

    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"RBRACE\t}\t%d",yylineno);
        DEBUG_FOR_LAB4(str);    
    #else
        return RBRACE;
    #endif
}
"[" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"LSQUAREBRACKET\t[\t%d",yylineno);
        DEBUG_FOR_LAB4(str);
    #else
        return LSQUAREBRACKET;
    #endif
}
"]" {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"RSQUAREBRACKET\t]\t%d",yylineno);
        DEBUG_FOR_LAB4(str);
    #else
        return RSQUAREBRACKET;
    #endif
}
{DECIMIAL} {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"DECIMIAL\t%s\t%d",yytext,yylineno);
        DEBUG_FOR_LAB4(str);
    #else
        return DECIMIAL;
    #endif
}

{ID} {
    char *idindex=sl.SymbolGet(yytext);
    if(idindex==NULL) 
        idindex=sl.SymbolPut(yytext);
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"ID\t%s\t%d\t%p",yytext,yylineno,idindex);
        DEBUG_FOR_LAB4(str);
    #else
        return ID;
    #endif
}

{DECLARE} {
    int i;
    char bef=yytext[0];
    char cur;
    char* curid;
    for( i=0;i<(int)strlen(yytext);i++)
    {
        if(i!=0) bef=yytext[i-1];
        cur=yytext[i];
        curid=yytext+i;
        if(bef==' ' && cur!=' ') break;
    }
    char *IDname=&yytext[i];
    char *idindex=sl.SymbolPut(curid);
    #ifdef ONLY_FOR_LEX
        
        char str[50]={0};
        if(yytext[0]=='i') sprintf(str,"INT\tint\t%d",yylineno);
        else if(yytext[0]=='f') sprintf(str,"FLOAT\tfloat\t%d",yylineno);
        DEBUG_FOR_LAB4(str);
        memset(str,'\0',sizeof(str));
        sprintf(str,"ID\t%s\t%d\t%p",IDname,yylineno,idindex);
        DEBUG_FOR_LAB4(str);
        
        /*
        char str[50]={0};
        sprintf(str,"ID\t%s\t%d\t%p",yytext,yylineno,idindex);
        DEBUG_FOR_LAB4(str);
        */
    #else
        return ID;
    #endif
}

{OCT} {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        int i=1;
        int dec=0;
        while(*(yytext+i)!='\0')
        {
            dec=*(yytext+i)-'0'+dec*8;
            i++;

        }
        sprintf(str,"OCT\t%d\t%d",dec,yylineno);
        DEBUG_FOR_LAB4(str);
    #else
        return OCT;
    #endif
}

{HEX} {
    #ifdef ONLY_FOR_LEX
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
        sprintf(str,"HEX\t%d\t%d",dec,yylineno);
        DEBUG_FOR_LAB4(str);
    #else
        return HEX;
    #endif
}

{FloatNUM} {
    #ifdef ONLY_FOR_LEX
        char str[50]={0};
        sprintf(str,"FloatNUM\t%s\t%d",yytext,yylineno);
        DEBUG_FOR_LAB4(str);
    #else
        return DECIMIAL;
    #endif   
}
{EOL} 
{WHITE}
%%

#ifdef ONLY_FOR_LEX
int main(int argc, char **argv){
    if(argc != 5){
        fprintf(stderr, "Argument Not Enough");
        exit(EXIT_FAILURE);
    }

    if(!(yyin = fopen(argv[1], "r"))){
        fprintf(stderr, "No such file or directory: %s", argv[1]);
        exit(EXIT_FAILURE);
    }

    if(!(yyout = fopen(argv[3], "w"))){
        fprintf(stderr, "No such file or directory: %s", argv[3]);
        exit(EXIT_FAILURE);
    }

    yylex();
    return 0;
}
#endif