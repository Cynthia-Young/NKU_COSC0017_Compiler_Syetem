/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* "%code top" blocks.  */
#line 1 "src/parser.y"

    #include <iostream>
    #include <assert.h>
    #include "parser.h"
    extern Ast ast;
    int yylex();
    int yyerror( char const * );
    Type* curType;

#line 78 "src/parser.cpp"




# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_ID = 3,                         /* ID  */
  YYSYMBOL_INTEGER = 4,                    /* INTEGER  */
  YYSYMBOL_CONST = 5,                      /* CONST  */
  YYSYMBOL_INT = 6,                        /* INT  */
  YYSYMBOL_VOID = 7,                       /* VOID  */
  YYSYMBOL_SEMICOLON = 8,                  /* SEMICOLON  */
  YYSYMBOL_RETURN = 9,                     /* RETURN  */
  YYSYMBOL_IF = 10,                        /* IF  */
  YYSYMBOL_ELSE = 11,                      /* ELSE  */
  YYSYMBOL_WHILE = 12,                     /* WHILE  */
  YYSYMBOL_BREAK = 13,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 14,                  /* CONTINUE  */
  YYSYMBOL_COMMA = 15,                     /* COMMA  */
  YYSYMBOL_ASSIGN = 16,                    /* ASSIGN  */
  YYSYMBOL_OR = 17,                        /* OR  */
  YYSYMBOL_AND = 18,                       /* AND  */
  YYSYMBOL_EQUAL = 19,                     /* EQUAL  */
  YYSYMBOL_UNEQUAL = 20,                   /* UNEQUAL  */
  YYSYMBOL_LESS = 21,                      /* LESS  */
  YYSYMBOL_GREATER = 22,                   /* GREATER  */
  YYSYMBOL_GREATERorEQUAL = 23,            /* GREATERorEQUAL  */
  YYSYMBOL_LESSorEQUAL = 24,               /* LESSorEQUAL  */
  YYSYMBOL_ADD = 25,                       /* ADD  */
  YYSYMBOL_SUB = 26,                       /* SUB  */
  YYSYMBOL_MULTI = 27,                     /* MULTI  */
  YYSYMBOL_DIVIDE = 28,                    /* DIVIDE  */
  YYSYMBOL_MOD = 29,                       /* MOD  */
  YYSYMBOL_NOT = 30,                       /* NOT  */
  YYSYMBOL_LPAREN = 31,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 32,                    /* RPAREN  */
  YYSYMBOL_LBRACE = 33,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 34,                    /* RBRACE  */
  YYSYMBOL_LSQUAREBRACKET = 35,            /* LSQUAREBRACKET  */
  YYSYMBOL_RSQUAREBRACKET = 36,            /* RSQUAREBRACKET  */
  YYSYMBOL_THEN = 37,                      /* THEN  */
  YYSYMBOL_YYACCEPT = 38,                  /* $accept  */
  YYSYMBOL_Program = 39,                   /* Program  */
  YYSYMBOL_Stmts = 40,                     /* Stmts  */
  YYSYMBOL_Stmt = 41,                      /* Stmt  */
  YYSYMBOL_BreakStmt = 42,                 /* BreakStmt  */
  YYSYMBOL_ContinueStmt = 43,              /* ContinueStmt  */
  YYSYMBOL_EmptyStmt = 44,                 /* EmptyStmt  */
  YYSYMBOL_AssignStmt = 45,                /* AssignStmt  */
  YYSYMBOL_left_expr = 46,                 /* left_expr  */
  YYSYMBOL_expr = 47,                      /* expr  */
  YYSYMBOL_Exp = 48,                       /* Exp  */
  YYSYMBOL_logical_or = 49,                /* logical_or  */
  YYSYMBOL_logical_and = 50,               /* logical_and  */
  YYSYMBOL_equal_expr = 51,                /* equal_expr  */
  YYSYMBOL_rela_expr = 52,                 /* rela_expr  */
  YYSYMBOL_add_minus = 53,                 /* add_minus  */
  YYSYMBOL_mult_div_mod = 54,              /* mult_div_mod  */
  YYSYMBOL_one_expr = 55,                  /* one_expr  */
  YYSYMBOL_func_argu = 56,                 /* func_argu  */
  YYSYMBOL_bas_expr = 57,                  /* bas_expr  */
  YYSYMBOL_BlockStmt = 58,                 /* BlockStmt  */
  YYSYMBOL_59_1 = 59,                      /* $@1  */
  YYSYMBOL_IfStmt = 60,                    /* IfStmt  */
  YYSYMBOL_ReturnStmt = 61,                /* ReturnStmt  */
  YYSYMBOL_Cond = 62,                      /* Cond  */
  YYSYMBOL_Type = 63,                      /* Type  */
  YYSYMBOL_DeclStmt = 64,                  /* DeclStmt  */
  YYSYMBOL_var_idlist = 65,                /* var_idlist  */
  YYSYMBOL_var_id_decl = 66,               /* var_id_decl  */
  YYSYMBOL_const_idlist = 67,              /* const_idlist  */
  YYSYMBOL_const_id_decl = 68,             /* const_id_decl  */
  YYSYMBOL_varExp = 69,                    /* varExp  */
  YYSYMBOL_constExp = 70,                  /* constExp  */
  YYSYMBOL_FuncDef = 71,                   /* FuncDef  */
  YYSYMBOL_72_2 = 72,                      /* $@2  */
  YYSYMBOL_FuncParams = 73,                /* FuncParams  */
  YYSYMBOL_FuncParam = 74,                 /* FuncParam  */
  YYSYMBOL_WhileStmt = 75,                 /* WhileStmt  */
  YYSYMBOL_ExpStmt = 76                    /* ExpStmt  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  58
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   185

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  38
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  39
/* YYNRULES -- Number of rules.  */
#define YYNRULES  82
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  140

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   292


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    56,    56,    61,    62,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    85,    91,    97,   104,
     110,   129,   134,   142,   144,   152,   157,   165,   169,   175,
     184,   189,   195,   201,   207,   215,   220,   229,   240,   245,
     255,   265,   278,   283,   298,   303,   310,   319,   326,   333,
     341,   346,   351,   361,   360,   370,   377,   380,   387,   392,
     400,   404,   408,   416,   420,   428,   435,   445,   464,   487,
     494,   504,   525,   532,   543,   539,   592,   598,   604,   612,
     622,   630,   636
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "ID", "INTEGER",
  "CONST", "INT", "VOID", "SEMICOLON", "RETURN", "IF", "ELSE", "WHILE",
  "BREAK", "CONTINUE", "COMMA", "ASSIGN", "OR", "AND", "EQUAL", "UNEQUAL",
  "LESS", "GREATER", "GREATERorEQUAL", "LESSorEQUAL", "ADD", "SUB",
  "MULTI", "DIVIDE", "MOD", "NOT", "LPAREN", "RPAREN", "LBRACE", "RBRACE",
  "LSQUAREBRACKET", "RSQUAREBRACKET", "THEN", "$accept", "Program",
  "Stmts", "Stmt", "BreakStmt", "ContinueStmt", "EmptyStmt", "AssignStmt",
  "left_expr", "expr", "Exp", "logical_or", "logical_and", "equal_expr",
  "rela_expr", "add_minus", "mult_div_mod", "one_expr", "func_argu",
  "bas_expr", "BlockStmt", "$@1", "IfStmt", "ReturnStmt", "Cond", "Type",
  "DeclStmt", "var_idlist", "var_id_decl", "const_idlist", "const_id_decl",
  "varExp", "constExp", "FuncDef", "$@2", "FuncParams", "FuncParam",
  "WhileStmt", "ExpStmt", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-36)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     152,   -26,   -36,    22,   -36,   -36,   -36,     6,   -14,    14,
      40,    52,    16,    16,    16,    16,   -27,    15,   152,   -36,
     -36,   -36,   -36,   -36,    46,    59,     8,    25,   -36,   -36,
     -36,   -36,   -36,    19,   -36,   -36,   -36,    53,    16,    27,
     -36,   -36,    61,    54,    56,    20,     3,     8,    16,    16,
     -36,   -36,   -36,   -36,   -36,    38,   -36,   152,   -36,   -36,
      16,   -36,    16,    16,    16,    16,    16,     7,    64,    60,
      16,   -36,   -11,    70,    68,    62,   -36,    16,    16,    16,
      16,    16,    16,    16,    16,    54,    55,    58,   -36,   120,
      80,    25,    25,   -36,   -36,   -36,    16,    22,   -36,    88,
      84,    16,   -36,    16,   -36,    27,    56,    20,     3,     3,
       8,     8,     8,     8,   152,   152,   -36,   -36,     8,   -36,
      90,    79,   -36,    85,   -36,   -36,   -36,     8,   -36,   -36,
      89,   -36,   -36,    22,    71,   152,   -36,    63,   -36,   -36
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    20,    52,     0,    61,    62,    18,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    53,     0,     2,     3,
      14,    15,    13,     5,    51,     0,    22,    35,    38,    42,
       6,     7,     8,     0,     9,    10,    12,    11,    49,     0,
      59,    51,     0,    21,    23,    25,    27,    30,     0,     0,
      16,    17,    44,    45,    46,     0,    55,     0,     1,     4,
       0,    82,     0,     0,     0,     0,     0,    67,     0,    65,
       0,    48,     0,     0,     0,    69,    58,     0,     0,     0,
       0,     0,     0,     0,     0,    60,     0,     0,    50,     0,
       0,    36,    37,    39,    40,    41,     0,    78,    63,     0,
       0,     0,    43,     0,    64,     0,    24,    26,    28,    29,
      31,    32,    34,    33,     0,     0,    54,    19,    72,    68,
       0,    74,    77,    67,    66,    81,    47,    73,    71,    70,
      56,    80,    79,     0,     0,     0,    76,     0,    57,    75
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -36,   -36,    45,   -16,   -36,   -36,   -36,   -36,     0,    -9,
     -35,    -5,    28,    29,   -24,     1,    -4,    -1,   -36,   -36,
     -31,   -36,   -36,   -36,    67,    -2,   -36,     9,   -36,     4,
     -36,   -36,   -36,   -36,   -36,   -36,   -23,   -36,   -36
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    17,    18,    19,    20,    21,    22,    23,    41,    42,
      25,    43,    44,    45,    46,    26,    27,    28,    72,    29,
      30,    57,    31,    32,    86,    33,    34,    68,    69,    74,
      75,   119,   128,    35,   134,   121,   122,    36,    37
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      24,    39,    59,    71,   101,    38,    55,    56,    47,     1,
       2,    52,    53,    54,    40,    58,    47,    48,    24,     1,
       2,   102,    67,    96,    81,    82,    83,    84,     4,     5,
      73,    12,    13,    62,    63,   100,    14,    15,    97,    79,
      80,    12,    13,    85,    85,    49,    14,    15,    50,    47,
      47,    90,    64,    65,    66,   108,   109,    24,    91,    92,
      51,    47,    60,    93,    94,    95,   126,    61,    70,    76,
      88,    77,    98,    59,    78,    99,   104,   105,    47,    47,
      47,    47,   110,   111,   112,   113,   103,   114,   117,    24,
     115,   123,   125,   132,   133,   120,    16,   118,   130,   131,
     135,    96,    89,   137,   127,   106,   139,   107,   124,   129,
     136,     0,     0,     0,    24,    24,    87,     0,     0,   138,
       0,     0,     0,     1,     2,     3,     4,     5,     6,     7,
       8,   120,     9,    10,    11,    24,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    12,    13,     0,     0,     0,
      14,    15,     0,    16,   116,     1,     2,     3,     4,     5,
       6,     7,     8,     0,     9,    10,    11,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    12,    13,     0,
       0,     0,    14,    15,     0,    16
};

static const yytype_int16 yycheck[] =
{
       0,     3,    18,    38,    15,    31,    15,    34,     7,     3,
       4,    12,    13,    14,     8,     0,    15,    31,    18,     3,
       4,    32,     3,    16,    21,    22,    23,    24,     6,     7,
       3,    25,    26,    25,    26,    70,    30,    31,    31,    19,
      20,    25,    26,    48,    49,    31,    30,    31,     8,    48,
      49,    60,    27,    28,    29,    79,    80,    57,    62,    63,
       8,    60,    16,    64,    65,    66,   101,     8,    15,     8,
      32,    17,     8,    89,    18,    15,     8,    15,    77,    78,
      79,    80,    81,    82,    83,    84,    16,    32,     8,    89,
      32,     3,     8,     3,    15,    97,    33,    96,   114,   115,
      11,    16,    57,    32,   103,    77,   137,    78,    99,   105,
     133,    -1,    -1,    -1,   114,   115,    49,    -1,    -1,   135,
      -1,    -1,    -1,     3,     4,     5,     6,     7,     8,     9,
      10,   133,    12,    13,    14,   135,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    25,    26,    -1,    -1,    -1,
      30,    31,    -1,    33,    34,     3,     4,     5,     6,     7,
       8,     9,    10,    -1,    12,    13,    14,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    25,    26,    -1,
      -1,    -1,    30,    31,    -1,    33
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,     7,     8,     9,    10,    12,
      13,    14,    25,    26,    30,    31,    33,    39,    40,    41,
      42,    43,    44,    45,    46,    48,    53,    54,    55,    57,
      58,    60,    61,    63,    64,    71,    75,    76,    31,    63,
       8,    46,    47,    49,    50,    51,    52,    53,    31,    31,
       8,     8,    55,    55,    55,    47,    34,    59,     0,    41,
      16,     8,    25,    26,    27,    28,    29,     3,    65,    66,
      15,    48,    56,     3,    67,    68,     8,    17,    18,    19,
      20,    21,    22,    23,    24,    49,    62,    62,    32,    40,
      47,    54,    54,    55,    55,    55,    16,    31,     8,    15,
      48,    15,    32,    16,     8,    15,    50,    51,    52,    52,
      53,    53,    53,    53,    32,    32,    34,     8,    53,    69,
      63,    73,    74,     3,    65,     8,    48,    53,    70,    67,
      41,    41,     3,    15,    72,    11,    74,    32,    41,    58
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    38,    39,    40,    40,    41,    41,    41,    41,    41,
      41,    41,    41,    41,    41,    41,    42,    43,    44,    45,
      46,    47,    48,    49,    49,    50,    50,    51,    51,    51,
      52,    52,    52,    52,    52,    53,    53,    53,    54,    54,
      54,    54,    55,    55,    55,    55,    55,    56,    56,    56,
      57,    57,    57,    59,    58,    58,    60,    60,    61,    61,
      62,    63,    63,    64,    64,    65,    65,    66,    66,    67,
      67,    68,    69,    70,    72,    71,    73,    73,    73,    74,
      75,    76,    76
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     2,     2,     1,     4,
       1,     1,     1,     1,     3,     1,     3,     1,     3,     3,
       1,     3,     3,     3,     3,     1,     3,     3,     1,     3,
       3,     3,     1,     4,     2,     2,     2,     3,     1,     0,
       3,     1,     1,     0,     4,     2,     5,     7,     3,     2,
       1,     1,     1,     3,     4,     1,     3,     1,     3,     1,
       3,     3,     1,     1,     0,     7,     3,     1,     0,     2,
       5,     4,     2
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: Stmts  */
#line 56 "src/parser.y"
            {
        ast.setRoot((yyvsp[0].stmttype));
    }
#line 1252 "src/parser.cpp"
    break;

  case 3: /* Stmts: Stmt  */
#line 61 "src/parser.y"
           {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1258 "src/parser.cpp"
    break;

  case 4: /* Stmts: Stmts Stmt  */
#line 62 "src/parser.y"
                {
        (yyval.stmttype) = new SeqNode((yyvsp[-1].stmttype), (yyvsp[0].stmttype));
    }
#line 1266 "src/parser.cpp"
    break;

  case 5: /* Stmt: AssignStmt  */
#line 69 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1272 "src/parser.cpp"
    break;

  case 6: /* Stmt: BlockStmt  */
#line 70 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1278 "src/parser.cpp"
    break;

  case 7: /* Stmt: IfStmt  */
#line 71 "src/parser.y"
             {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1284 "src/parser.cpp"
    break;

  case 8: /* Stmt: ReturnStmt  */
#line 72 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1290 "src/parser.cpp"
    break;

  case 9: /* Stmt: DeclStmt  */
#line 73 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1296 "src/parser.cpp"
    break;

  case 10: /* Stmt: FuncDef  */
#line 74 "src/parser.y"
              {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1302 "src/parser.cpp"
    break;

  case 11: /* Stmt: ExpStmt  */
#line 75 "src/parser.y"
              {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1308 "src/parser.cpp"
    break;

  case 12: /* Stmt: WhileStmt  */
#line 76 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1314 "src/parser.cpp"
    break;

  case 13: /* Stmt: EmptyStmt  */
#line 77 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype); }
#line 1320 "src/parser.cpp"
    break;

  case 14: /* Stmt: BreakStmt  */
#line 78 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1326 "src/parser.cpp"
    break;

  case 15: /* Stmt: ContinueStmt  */
#line 79 "src/parser.y"
                   {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1332 "src/parser.cpp"
    break;

  case 16: /* BreakStmt: BREAK SEMICOLON  */
#line 85 "src/parser.y"
                    {
            (yyval.stmttype) = new BreakStmt();
        }
#line 1340 "src/parser.cpp"
    break;

  case 17: /* ContinueStmt: CONTINUE SEMICOLON  */
#line 91 "src/parser.y"
                      {
            (yyval.stmttype) = new ContinueStmt();
        }
#line 1348 "src/parser.cpp"
    break;

  case 18: /* EmptyStmt: SEMICOLON  */
#line 97 "src/parser.y"
             {
        (yyval.stmttype) = new EmptyStmt();
    }
#line 1356 "src/parser.cpp"
    break;

  case 19: /* AssignStmt: left_expr ASSIGN expr SEMICOLON  */
#line 104 "src/parser.y"
                                    {
        (yyval.stmttype) = new AssignStmt((yyvsp[-3].exprtype), (yyvsp[-1].exprtype));
    }
#line 1364 "src/parser.cpp"
    break;

  case 20: /* left_expr: ID  */
#line 111 "src/parser.y"
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[0].strtype));
        //变量未声明 类型检查1
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[0].strtype));
            delete [](char*)(yyvsp[0].strtype);
            exit(EXIT_FAILURE);
        }
        (yyval.exprtype) = new Id(se);
        delete [](yyvsp[0].strtype);
    }
#line 1382 "src/parser.cpp"
    break;

  case 21: /* expr: logical_or  */
#line 129 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1388 "src/parser.cpp"
    break;

  case 22: /* Exp: add_minus  */
#line 135 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1396 "src/parser.cpp"
    break;

  case 23: /* logical_or: logical_and  */
#line 142 "src/parser.y"
                {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1402 "src/parser.cpp"
    break;

  case 24: /* logical_or: logical_or OR logical_and  */
#line 145 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::OR, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1411 "src/parser.cpp"
    break;

  case 25: /* logical_and: equal_expr  */
#line 153 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1419 "src/parser.cpp"
    break;

  case 26: /* logical_and: logical_and AND equal_expr  */
#line 158 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::AND, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1428 "src/parser.cpp"
    break;

  case 27: /* equal_expr: rela_expr  */
#line 166 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1436 "src/parser.cpp"
    break;

  case 28: /* equal_expr: equal_expr EQUAL rela_expr  */
#line 170 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::EQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1445 "src/parser.cpp"
    break;

  case 29: /* equal_expr: equal_expr UNEQUAL rela_expr  */
#line 176 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::UNEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1454 "src/parser.cpp"
    break;

  case 30: /* rela_expr: add_minus  */
#line 185 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1462 "src/parser.cpp"
    break;

  case 31: /* rela_expr: rela_expr LESS add_minus  */
#line 190 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESS, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1471 "src/parser.cpp"
    break;

  case 32: /* rela_expr: rela_expr GREATER add_minus  */
#line 196 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATER, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1480 "src/parser.cpp"
    break;

  case 33: /* rela_expr: rela_expr LESSorEQUAL add_minus  */
#line 202 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESSorEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1489 "src/parser.cpp"
    break;

  case 34: /* rela_expr: rela_expr GREATERorEQUAL add_minus  */
#line 208 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATERorEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1498 "src/parser.cpp"
    break;

  case 35: /* add_minus: mult_div_mod  */
#line 216 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1506 "src/parser.cpp"
    break;

  case 36: /* add_minus: add_minus ADD mult_div_mod  */
#line 221 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt()) se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        //MOdify float else se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::ADD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1518 "src/parser.cpp"
    break;

  case 37: /* add_minus: add_minus SUB mult_div_mod  */
#line 230 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt()) se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        // Modify float else se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::SUB, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1529 "src/parser.cpp"
    break;

  case 38: /* mult_div_mod: one_expr  */
#line 241 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1537 "src/parser.cpp"
    break;

  case 39: /* mult_div_mod: mult_div_mod MULTI one_expr  */
#line 246 "src/parser.y"
    {
        SymbolEntry *se;

        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt()) se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        //MOdify float else se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());  

        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MULTI, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1550 "src/parser.cpp"
    break;

  case 40: /* mult_div_mod: mult_div_mod DIVIDE one_expr  */
#line 256 "src/parser.y"
    {
        SymbolEntry *se;

        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt()) se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        //MOdify float else se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());  

        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::DIVIDE, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1563 "src/parser.cpp"
    break;

  case 41: /* mult_div_mod: mult_div_mod MOD one_expr  */
#line 266 "src/parser.y"
    {
        SymbolEntry *se;

        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt()) se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        //MOdify float else se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());  
        
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1576 "src/parser.cpp"
    break;

  case 42: /* one_expr: bas_expr  */
#line 279 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1584 "src/parser.cpp"
    break;

  case 43: /* one_expr: ID LPAREN func_argu RPAREN  */
#line 284 "src/parser.y"
    {
        SymbolEntry *se;
            //函数未声明 类型检查4
            se = identifiers->lookup((yyvsp[-3].strtype));
            if(se == nullptr)
            {
                fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[-3].strtype));
                delete [](char*)(yyvsp[-3].strtype);
                exit(EXIT_FAILURE);
            }
            SymbolEntry *tmp = new TemporarySymbolEntry(se->getType(), SymbolTable::getLabel());
            (yyval.exprtype) = new FuncCallNode(tmp, new Id(se), (FuncCallParamsNode*)(yyvsp[-1].stmttype));
    }
#line 1602 "src/parser.cpp"
    break;

  case 44: /* one_expr: ADD one_expr  */
#line 299 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1610 "src/parser.cpp"
    break;

  case 45: /* one_expr: SUB one_expr  */
#line 304 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        fprintf(stderr," SUB UnaryExp %s \n",(yyvsp[0].exprtype)->getType()->toStr().c_str());
        (yyval.exprtype) = new SingleExpr(se, SingleExpr::SUB, (yyvsp[0].exprtype));
    }
#line 1620 "src/parser.cpp"
    break;

  case 46: /* one_expr: NOT one_expr  */
#line 311 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingleExpr(se, SingleExpr::NOT, (yyvsp[0].exprtype));
    }
#line 1629 "src/parser.cpp"
    break;

  case 47: /* func_argu: func_argu COMMA Exp  */
#line 320 "src/parser.y"
    {
        FuncCallParamsNode* node = (FuncCallParamsNode*) (yyvsp[-2].stmttype);
        node->addNext((yyvsp[0].exprtype));
        (yyval.stmttype) = node;
    }
#line 1639 "src/parser.cpp"
    break;

  case 48: /* func_argu: Exp  */
#line 327 "src/parser.y"
    {
        FuncCallParamsNode* node = new FuncCallParamsNode();
        node->addNext((yyvsp[0].exprtype));
        (yyval.stmttype) = node;    
    }
#line 1649 "src/parser.cpp"
    break;

  case 49: /* func_argu: %empty  */
#line 334 "src/parser.y"
    {
        (yyval.stmttype) = nullptr;
    }
#line 1657 "src/parser.cpp"
    break;

  case 50: /* bas_expr: LPAREN expr RPAREN  */
#line 342 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[-1].exprtype);
    }
#line 1665 "src/parser.cpp"
    break;

  case 51: /* bas_expr: left_expr  */
#line 347 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1673 "src/parser.cpp"
    break;

  case 52: /* bas_expr: INTEGER  */
#line 352 "src/parser.y"
    {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::constIntType, (yyvsp[0].itype));
        (yyval.exprtype) = new Constant(se);
    }
#line 1682 "src/parser.cpp"
    break;

  case 53: /* $@1: %empty  */
#line 361 "src/parser.y"
        {identifiers = new SymbolTable(identifiers);}
#line 1688 "src/parser.cpp"
    break;

  case 54: /* BlockStmt: LBRACE $@1 Stmts RBRACE  */
#line 363 "src/parser.y"
        {
            (yyval.stmttype) = new CompoundStmt((yyvsp[-1].stmttype));
            SymbolTable *top = identifiers;
            identifiers = identifiers->getPrev();
            delete top;
        }
#line 1699 "src/parser.cpp"
    break;

  case 55: /* BlockStmt: LBRACE RBRACE  */
#line 371 "src/parser.y"
    {
        (yyval.stmttype) = new CompoundStmt(nullptr);
    }
#line 1707 "src/parser.cpp"
    break;

  case 56: /* IfStmt: IF LPAREN Cond RPAREN Stmt  */
#line 377 "src/parser.y"
                                            {
        (yyval.stmttype) = new IfStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1715 "src/parser.cpp"
    break;

  case 57: /* IfStmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 380 "src/parser.y"
                                           {
        (yyval.stmttype) = new IfElseStmt((yyvsp[-4].exprtype), (yyvsp[-2].stmttype), (yyvsp[0].stmttype));
    }
#line 1723 "src/parser.cpp"
    break;

  case 58: /* ReturnStmt: RETURN expr SEMICOLON  */
#line 388 "src/parser.y"
    {
        (yyval.stmttype) = new ReturnStmt((yyvsp[-1].exprtype));
    }
#line 1731 "src/parser.cpp"
    break;

  case 59: /* ReturnStmt: RETURN SEMICOLON  */
#line 393 "src/parser.y"
    {
        (yyval.stmttype) = new ReturnStmt(nullptr);
    }
#line 1739 "src/parser.cpp"
    break;

  case 60: /* Cond: logical_or  */
#line 400 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1745 "src/parser.cpp"
    break;

  case 61: /* Type: INT  */
#line 404 "src/parser.y"
          {
        (yyval.type) = TypeSystem::intType;
        curType = TypeSystem::intType;
    }
#line 1754 "src/parser.cpp"
    break;

  case 62: /* Type: VOID  */
#line 408 "src/parser.y"
           {
        (yyval.type) = TypeSystem::voidType;
        curType = TypeSystem::voidType;
    }
#line 1763 "src/parser.cpp"
    break;

  case 63: /* DeclStmt: Type var_idlist SEMICOLON  */
#line 416 "src/parser.y"
                              {
        (yyval.stmttype) = (yyvsp[-1].stmttype) ;
    }
#line 1771 "src/parser.cpp"
    break;

  case 64: /* DeclStmt: CONST Type const_idlist SEMICOLON  */
#line 421 "src/parser.y"
    {
        (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 1779 "src/parser.cpp"
    break;

  case 65: /* var_idlist: var_id_decl  */
#line 429 "src/parser.y"
    {
            DeclStmt* node = new DeclStmt(false);
            node->addNext((DefNode*)(yyvsp[0].stmttype));
            (yyval.stmttype) = node;
    }
#line 1789 "src/parser.cpp"
    break;

  case 66: /* var_idlist: var_id_decl COMMA var_idlist  */
#line 436 "src/parser.y"
    {
            DeclStmt* node = (DeclStmt*) (yyvsp[0].stmttype);
            node->addNext((DefNode*)(yyvsp[-2].stmttype));
            (yyval.stmttype) = node;
    }
#line 1799 "src/parser.cpp"
    break;

  case 67: /* var_id_decl: ID  */
#line 446 "src/parser.y"
    {
        //decl重定义 finished bd
        //重复声明 类型检查1 
        if( identifiers->isRedef((yyvsp[0].strtype)) )
        {
            fprintf(stderr, "identifier \"%s\" redefine\n", (yyvsp[0].strtype));
            exit(EXIT_FAILURE);
        }
        // 首先将ID插入符号表中
        Type* type;
        if(curType->isInt()) type = TypeSystem::intType;
        //else type = TypeSystem::floatType;
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), nullptr, false);
    }
#line 1821 "src/parser.cpp"
    break;

  case 68: /* var_id_decl: ID ASSIGN varExp  */
#line 465 "src/parser.y"
    {
        //decl重定义 finished bd 
        //重复声明 类型检查1 
        if( identifiers->isRedef((yyvsp[-2].strtype)) )
        {
            fprintf(stderr, "identifier \"%s\" redefine\n", (yyvsp[-2].strtype));
           exit(EXIT_FAILURE);
        }

        // 首先将ID插入符号表中
        Type* type;
        if(curType->isInt()) type = TypeSystem::intType;
        //else type = TypeSystem::floatType;
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), (Node*)(yyvsp[0].exprtype), false);
    }
#line 1844 "src/parser.cpp"
    break;

  case 69: /* const_idlist: const_id_decl  */
#line 488 "src/parser.y"
    {
        DeclStmt* node = new DeclStmt(false);
        node->addNext((DefNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 1854 "src/parser.cpp"
    break;

  case 70: /* const_idlist: const_id_decl COMMA const_idlist  */
#line 495 "src/parser.y"
    {
        DeclStmt* node = (DeclStmt*) (yyvsp[0].stmttype);
        node->addNext((DefNode*)(yyvsp[-2].stmttype));
        (yyval.stmttype) = node;        
    }
#line 1864 "src/parser.cpp"
    break;

  case 71: /* const_id_decl: ID ASSIGN constExp  */
#line 505 "src/parser.y"
    {
        //decl重定义 finished bd 
        //重复声明 类型检查1 
        if( identifiers->isRedef((yyvsp[-2].strtype)) )
        {
            fprintf(stderr, "identifier \"%s\" redefine\n", (yyvsp[-2].strtype));
            exit(EXIT_FAILURE);
        }
        Type* type;
        if(curType->isInt()) type = TypeSystem::constIntType;
        //else type = TypeSystem::constFloatType;
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), (Node*)(yyvsp[0].exprtype), true);//类型向上转换        
    }
#line 1885 "src/parser.cpp"
    break;

  case 72: /* varExp: add_minus  */
#line 525 "src/parser.y"
             {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1893 "src/parser.cpp"
    break;

  case 73: /* constExp: add_minus  */
#line 532 "src/parser.y"
             {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1901 "src/parser.cpp"
    break;

  case 74: /* $@2: %empty  */
#line 543 "src/parser.y"
    {
        //不符合重载要求的函数重复声明 类型检查4
        if ((yyvsp[0].stmttype) == nullptr)
        {
            std::vector<Type*> ParamsType;
            if( identifiers -> isFuncRedef((yyvsp[-2].strtype), ParamsType))
            {
                fprintf(stderr, "function \"%s\" redefine\n", (yyvsp[-2].strtype));
                exit(EXIT_FAILURE);
            }
        }
        else
        {
            if( identifiers -> isFuncRedef((yyvsp[-2].strtype), ((FuncDefParamsNode*)(yyvsp[0].stmttype))->getParamsType()))
            {
                fprintf(stderr, "function \"%s\" redefine\n", (yyvsp[-2].strtype));
                exit(EXIT_FAILURE);
            }
        }
        
        Type *funcType;
        funcType = new FunctionType((yyvsp[-3].type),{});
        
        SymbolEntry *se = new IdentifierSymbolEntry(funcType, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        identifiers = new SymbolTable(identifiers);

        if((yyvsp[0].stmttype)!=nullptr)
        {
            ((FunctionType*)(se->getType()))->setparamsType(((FuncDefParamsNode*)(yyvsp[0].stmttype))->getParamsType());
        }

    }
#line 1939 "src/parser.cpp"
    break;

  case 75: /* FuncDef: Type ID LPAREN FuncParams $@2 RPAREN BlockStmt  */
#line 578 "src/parser.y"
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-5].strtype));
        assert(se != nullptr);
        (yyval.stmttype) = new FunctionDef(se,(FuncDefParamsNode*)(yyvsp[-3].stmttype),(yyvsp[0].stmttype));
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        delete [](yyvsp[-5].strtype);
    }
#line 1954 "src/parser.cpp"
    break;

  case 76: /* FuncParams: FuncParams COMMA FuncParam  */
#line 592 "src/parser.y"
                               {
        FuncDefParamsNode* node = (FuncDefParamsNode*)(yyvsp[-2].stmttype);
        node->addNext(((DefNode*)(yyvsp[0].stmttype))->getId());
        (yyval.stmttype) = node;
    }
#line 1964 "src/parser.cpp"
    break;

  case 77: /* FuncParams: FuncParam  */
#line 598 "src/parser.y"
              {
        FuncDefParamsNode* node = new FuncDefParamsNode();
        node->addNext(((DefNode*)(yyvsp[0].stmttype))->getId());
        (yyval.stmttype) = node;
    }
#line 1974 "src/parser.cpp"
    break;

  case 78: /* FuncParams: %empty  */
#line 604 "src/parser.y"
           {
        (yyval.stmttype) = nullptr;
    }
#line 1982 "src/parser.cpp"
    break;

  case 79: /* FuncParam: Type ID  */
#line 612 "src/parser.y"
            {
        SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), nullptr, false);
    }
#line 1992 "src/parser.cpp"
    break;

  case 80: /* WhileStmt: WHILE LPAREN Cond RPAREN Stmt  */
#line 623 "src/parser.y"
    {
        (yyval.stmttype) = new WhileStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 2000 "src/parser.cpp"
    break;

  case 81: /* ExpStmt: ExpStmt COMMA Exp SEMICOLON  */
#line 630 "src/parser.y"
                               {
        ExprStmtNode* node = (ExprStmtNode*)(yyvsp[-3].stmttype);
        node->addNext((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 2010 "src/parser.cpp"
    break;

  case 82: /* ExpStmt: Exp SEMICOLON  */
#line 636 "src/parser.y"
                 {
        ExprStmtNode* node = new ExprStmtNode();
        node->addNext((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 2020 "src/parser.cpp"
    break;


#line 2024 "src/parser.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 642 "src/parser.y"


int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
