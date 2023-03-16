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




#line 81 "src/parser.cpp"




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
  YYSYMBOL_FLOATING = 5,                   /* FLOATING  */
  YYSYMBOL_CONST = 6,                      /* CONST  */
  YYSYMBOL_INT = 7,                        /* INT  */
  YYSYMBOL_VOID = 8,                       /* VOID  */
  YYSYMBOL_FLOAT = 9,                      /* FLOAT  */
  YYSYMBOL_SEMICOLON = 10,                 /* SEMICOLON  */
  YYSYMBOL_RETURN = 11,                    /* RETURN  */
  YYSYMBOL_IF = 12,                        /* IF  */
  YYSYMBOL_ELSE = 13,                      /* ELSE  */
  YYSYMBOL_WHILE = 14,                     /* WHILE  */
  YYSYMBOL_BREAK = 15,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 16,                  /* CONTINUE  */
  YYSYMBOL_COMMA = 17,                     /* COMMA  */
  YYSYMBOL_ASSIGN = 18,                    /* ASSIGN  */
  YYSYMBOL_OR = 19,                        /* OR  */
  YYSYMBOL_AND = 20,                       /* AND  */
  YYSYMBOL_EQUAL = 21,                     /* EQUAL  */
  YYSYMBOL_UNEQUAL = 22,                   /* UNEQUAL  */
  YYSYMBOL_LESS = 23,                      /* LESS  */
  YYSYMBOL_GREATER = 24,                   /* GREATER  */
  YYSYMBOL_GREATERorEQUAL = 25,            /* GREATERorEQUAL  */
  YYSYMBOL_LESSorEQUAL = 26,               /* LESSorEQUAL  */
  YYSYMBOL_ADD = 27,                       /* ADD  */
  YYSYMBOL_SUB = 28,                       /* SUB  */
  YYSYMBOL_MULTI = 29,                     /* MULTI  */
  YYSYMBOL_DIVIDE = 30,                    /* DIVIDE  */
  YYSYMBOL_MOD = 31,                       /* MOD  */
  YYSYMBOL_NOT = 32,                       /* NOT  */
  YYSYMBOL_LPAREN = 33,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 34,                    /* RPAREN  */
  YYSYMBOL_LBRACE = 35,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 36,                    /* RBRACE  */
  YYSYMBOL_LSQUAREBRACKET = 37,            /* LSQUAREBRACKET  */
  YYSYMBOL_RSQUAREBRACKET = 38,            /* RSQUAREBRACKET  */
  YYSYMBOL_THEN = 39,                      /* THEN  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_Program = 41,                   /* Program  */
  YYSYMBOL_Stmts = 42,                     /* Stmts  */
  YYSYMBOL_Stmt = 43,                      /* Stmt  */
  YYSYMBOL_BreakStmt = 44,                 /* BreakStmt  */
  YYSYMBOL_ContinueStmt = 45,              /* ContinueStmt  */
  YYSYMBOL_EmptyStmt = 46,                 /* EmptyStmt  */
  YYSYMBOL_AssignStmt = 47,                /* AssignStmt  */
  YYSYMBOL_left_expr = 48,                 /* left_expr  */
  YYSYMBOL_Array = 49,                     /* Array  */
  YYSYMBOL_expr = 50,                      /* expr  */
  YYSYMBOL_Exp = 51,                       /* Exp  */
  YYSYMBOL_logical_or = 52,                /* logical_or  */
  YYSYMBOL_logical_and = 53,               /* logical_and  */
  YYSYMBOL_equal_expr = 54,                /* equal_expr  */
  YYSYMBOL_rela_expr = 55,                 /* rela_expr  */
  YYSYMBOL_add_minus = 56,                 /* add_minus  */
  YYSYMBOL_mult_div_mod = 57,              /* mult_div_mod  */
  YYSYMBOL_one_expr = 58,                  /* one_expr  */
  YYSYMBOL_func_argu = 59,                 /* func_argu  */
  YYSYMBOL_bas_expr = 60,                  /* bas_expr  */
  YYSYMBOL_BlockStmt = 61,                 /* BlockStmt  */
  YYSYMBOL_62_1 = 62,                      /* $@1  */
  YYSYMBOL_IfStmt = 63,                    /* IfStmt  */
  YYSYMBOL_ReturnStmt = 64,                /* ReturnStmt  */
  YYSYMBOL_Cond = 65,                      /* Cond  */
  YYSYMBOL_Type = 66,                      /* Type  */
  YYSYMBOL_DeclStmt = 67,                  /* DeclStmt  */
  YYSYMBOL_var_idlist = 68,                /* var_idlist  */
  YYSYMBOL_var_id_decl = 69,               /* var_id_decl  */
  YYSYMBOL_varArrayValue = 70,             /* varArrayValue  */
  YYSYMBOL_varValueList = 71,              /* varValueList  */
  YYSYMBOL_varArray = 72,                  /* varArray  */
  YYSYMBOL_const_idlist = 73,              /* const_idlist  */
  YYSYMBOL_const_id_decl = 74,             /* const_id_decl  */
  YYSYMBOL_conArrayValue = 75,             /* conArrayValue  */
  YYSYMBOL_conValueList = 76,              /* conValueList  */
  YYSYMBOL_constArray = 77,                /* constArray  */
  YYSYMBOL_varExp = 78,                    /* varExp  */
  YYSYMBOL_constExp = 79,                  /* constExp  */
  YYSYMBOL_FuncDef = 80,                   /* FuncDef  */
  YYSYMBOL_81_2 = 81,                      /* $@2  */
  YYSYMBOL_82_3 = 82,                      /* $@3  */
  YYSYMBOL_FuncParams = 83,                /* FuncParams  */
  YYSYMBOL_FuncParam = 84,                 /* FuncParam  */
  YYSYMBOL_WhileStmt = 85,                 /* WhileStmt  */
  YYSYMBOL_ExpStmt = 86                    /* ExpStmt  */
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
#define YYFINAL  62
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   253

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  47
/* YYNRULES -- Number of rules.  */
#define YYNRULES  107
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  187

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


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
      35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    61,    61,    66,    67,    74,    75,    76,    77,    78,
      79,    80,    81,    82,    83,    84,    90,    96,   102,   109,
     118,   133,   154,   161,   171,   176,   184,   186,   194,   199,
     207,   211,   217,   226,   231,   237,   243,   249,   257,   262,
     273,   284,   289,   298,   307,   319,   324,   339,   344,   354,
     363,   370,   377,   386,   391,   396,   404,   414,   413,   423,
     430,   433,   440,   445,   453,   457,   461,   466,   474,   478,
     486,   493,   505,   525,   546,   569,   601,   609,   615,   625,
     633,   646,   654,   665,   672,   683,   702,   729,   736,   741,
     750,   757,   769,   776,   785,   792,   800,   809,   799,   834,
     840,   846,   856,   862,   879,   902,   910,   916
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
  "FLOATING", "CONST", "INT", "VOID", "FLOAT", "SEMICOLON", "RETURN", "IF",
  "ELSE", "WHILE", "BREAK", "CONTINUE", "COMMA", "ASSIGN", "OR", "AND",
  "EQUAL", "UNEQUAL", "LESS", "GREATER", "GREATERorEQUAL", "LESSorEQUAL",
  "ADD", "SUB", "MULTI", "DIVIDE", "MOD", "NOT", "LPAREN", "RPAREN",
  "LBRACE", "RBRACE", "LSQUAREBRACKET", "RSQUAREBRACKET", "THEN",
  "$accept", "Program", "Stmts", "Stmt", "BreakStmt", "ContinueStmt",
  "EmptyStmt", "AssignStmt", "left_expr", "Array", "expr", "Exp",
  "logical_or", "logical_and", "equal_expr", "rela_expr", "add_minus",
  "mult_div_mod", "one_expr", "func_argu", "bas_expr", "BlockStmt", "$@1",
  "IfStmt", "ReturnStmt", "Cond", "Type", "DeclStmt", "var_idlist",
  "var_id_decl", "varArrayValue", "varValueList", "varArray",
  "const_idlist", "const_id_decl", "conArrayValue", "conValueList",
  "constArray", "varExp", "constExp", "FuncDef", "$@2", "$@3",
  "FuncParams", "FuncParam", "WhileStmt", "ExpStmt", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-142)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-97)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     203,    62,  -142,  -142,    93,  -142,  -142,  -142,  -142,   217,
      59,    65,    20,    63,   220,   220,   220,   220,    67,   113,
     203,  -142,  -142,  -142,  -142,  -142,    96,   107,     6,    77,
    -142,  -142,  -142,  -142,  -142,   118,  -142,  -142,  -142,   105,
     220,   220,    86,   123,  -142,  -142,   117,   111,   114,    40,
      -5,     6,   220,   220,  -142,  -142,  -142,  -142,  -142,    97,
    -142,   203,  -142,  -142,   220,  -142,   220,   220,   220,   220,
     220,    -2,    19,  -142,   220,  -142,    51,    95,   220,     5,
      79,  -142,  -142,   220,   220,   220,   220,   220,   220,   220,
     220,   111,   103,   110,  -142,   169,   136,    77,    77,  -142,
    -142,  -142,   220,   220,     9,   112,  -142,   149,   143,   220,
    -142,  -142,   116,   220,   220,    10,  -142,   123,   114,    40,
      -5,    -5,     6,     6,     6,     6,   203,   203,  -142,  -142,
       6,  -142,   119,   115,   220,    93,    14,  -142,  -142,  -142,
    -142,     6,  -142,   120,   135,   220,  -142,   142,  -142,  -142,
      21,  -142,  -142,   121,   153,   144,  -142,  -142,    55,  -142,
    -142,   122,   203,  -142,  -142,    33,  -142,   132,    93,   148,
    -142,  -142,    50,  -142,  -142,   115,  -142,   150,  -142,   151,
     135,  -142,  -142,   152,  -142,  -142,   154
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    20,    55,    56,     0,    65,    66,    67,    18,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    57,     0,
       2,     3,    14,    15,    13,     5,    54,     0,    25,    38,
      41,    45,     6,     7,     8,     0,     9,    10,    12,    11,
      52,     0,    21,     0,    63,    54,     0,    24,    26,    28,
      30,    33,     0,     0,    16,    17,    47,    48,    49,     0,
      59,     0,     1,     4,     0,   107,     0,     0,     0,     0,
       0,    72,     0,    70,     0,    51,     0,     0,     0,     0,
       0,    83,    62,     0,     0,     0,     0,     0,     0,     0,
       0,    64,     0,     0,    53,     0,     0,    39,    40,    42,
      43,    44,     0,     0,    74,     0,    68,     0,     0,     0,
      46,    23,     0,     0,     0,     0,    69,     0,    27,    29,
      31,    32,    34,    35,    37,    36,     0,     0,    58,    19,
      94,    73,     0,     0,     0,   101,    72,    71,   106,    50,
      22,    95,    85,     0,     0,     0,    84,    60,   105,    82,
       0,    75,    76,     0,     0,    97,   100,    93,     0,    86,
      87,     0,     0,    78,    80,     0,    81,   102,     0,     0,
      89,    91,     0,    92,    61,     0,    77,     0,    99,     0,
       0,    88,    79,   104,    98,    90,   103
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -142,  -142,   126,   -11,  -142,  -142,  -142,  -142,     2,  -142,
     -12,   -37,    18,   109,   106,    24,    -9,    45,    -4,  -142,
    -142,    15,  -142,  -142,  -142,   140,    -3,  -142,  -142,    88,
    -135,  -142,  -142,  -142,    81,  -141,  -142,    16,   -96,  -100,
    -142,  -142,  -142,  -142,    32,  -142,  -142
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    19,    20,    21,    22,    23,    24,    25,    45,    42,
      46,    27,    47,    48,    49,    50,    28,    29,    30,    76,
      31,    32,    61,    33,    34,    92,    35,    36,    72,    73,
     151,   165,   104,    80,    81,   159,   172,   115,   152,   160,
      37,   105,   169,   155,   156,    38,    39
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      51,    43,    26,    75,    77,    59,   131,   132,    51,    63,
      56,    57,    58,   142,   143,   164,   102,   171,    87,    88,
      89,    90,    26,   113,     1,     2,     3,   133,   144,   106,
      54,   -96,   102,    66,    67,   103,   107,   108,   153,   185,
     182,   112,   114,    51,    51,   161,   134,   145,    14,    15,
     175,   103,    96,    16,    17,    51,   150,   163,     1,     2,
       3,    85,    86,    26,    99,   100,   101,   180,   109,   176,
      91,    91,   139,    55,    51,    51,    51,    51,   122,   123,
     124,   125,    14,    15,    63,   110,   181,    16,    17,   116,
     158,   170,    52,   130,   130,    40,   117,    26,    53,    41,
       5,     6,     7,    60,   141,   141,    68,    69,    70,   120,
     121,    97,    98,    62,    64,   147,   148,    65,     1,     2,
       3,    71,    74,    78,   130,   130,    79,    82,    26,    26,
      83,    94,   154,   111,    84,   141,   141,   126,     1,     2,
       3,   130,    14,    15,   127,   135,   129,    16,    17,   141,
     150,   174,   136,   138,   140,   162,   167,   149,   157,   166,
     173,   168,    14,    15,    26,   154,   130,    16,    17,   177,
     158,   141,     1,     2,     3,     4,     5,     6,     7,     8,
       9,    10,   179,    11,    12,    13,    18,    95,   183,   114,
     119,   145,   118,    93,   184,   137,    14,    15,   146,   186,
     178,    16,    17,     0,    18,   128,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,     0,    11,    12,    13,
       1,     2,     3,     1,     2,     3,     0,    44,     0,     0,
      14,    15,     0,     0,     0,    16,    17,     0,    18,     0,
       0,     0,     0,     0,    14,    15,     0,    14,    15,    16,
      17,     0,    16,    17
};

static const yytype_int16 yycheck[] =
{
       9,     4,     0,    40,    41,    17,   102,   103,    17,    20,
      14,    15,    16,   113,   114,   150,    18,   158,    23,    24,
      25,    26,    20,    18,     3,     4,     5,    18,    18,    10,
      10,    33,    18,    27,    28,    37,    17,    74,   134,   180,
     175,    78,    37,    52,    53,   145,    37,    37,    27,    28,
      17,    37,    64,    32,    33,    64,    35,    36,     3,     4,
       5,    21,    22,    61,    68,    69,    70,    17,    17,    36,
      52,    53,   109,    10,    83,    84,    85,    86,    87,    88,
      89,    90,    27,    28,    95,    34,    36,    32,    33,    10,
      35,    36,    33,   102,   103,    33,    17,    95,    33,    37,
       7,     8,     9,    36,   113,   114,    29,    30,    31,    85,
      86,    66,    67,     0,    18,   126,   127,    10,     3,     4,
       5,     3,    17,    37,   133,   134,     3,    10,   126,   127,
      19,    34,   135,    38,    20,   144,   145,    34,     3,     4,
       5,   150,    27,    28,    34,    33,    10,    32,    33,   158,
      35,   162,     3,    10,    38,    13,     3,    38,    38,    38,
      38,    17,    27,    28,   162,   168,   175,    32,    33,    37,
      35,   180,     3,     4,     5,     6,     7,     8,     9,    10,
      11,    12,    34,    14,    15,    16,    35,    61,    38,    37,
      84,    37,    83,    53,   179,   107,    27,    28,   117,   183,
     168,    32,    33,    -1,    35,    36,     3,     4,     5,     6,
       7,     8,     9,    10,    11,    12,    -1,    14,    15,    16,
       3,     4,     5,     3,     4,     5,    -1,    10,    -1,    -1,
      27,    28,    -1,    -1,    -1,    32,    33,    -1,    35,    -1,
      -1,    -1,    -1,    -1,    27,    28,    -1,    27,    28,    32,
      33,    -1,    32,    33
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    14,    15,    16,    27,    28,    32,    33,    35,    41,
      42,    43,    44,    45,    46,    47,    48,    51,    56,    57,
      58,    60,    61,    63,    64,    66,    67,    80,    85,    86,
      33,    37,    49,    66,    10,    48,    50,    52,    53,    54,
      55,    56,    33,    33,    10,    10,    58,    58,    58,    50,
      36,    62,     0,    43,    18,    10,    27,    28,    29,    30,
      31,     3,    68,    69,    17,    51,    59,    51,    37,     3,
      73,    74,    10,    19,    20,    21,    22,    23,    24,    25,
      26,    52,    65,    65,    34,    42,    50,    57,    57,    58,
      58,    58,    18,    37,    72,    81,    10,    17,    51,    17,
      34,    38,    51,    18,    37,    77,    10,    17,    53,    54,
      55,    55,    56,    56,    56,    56,    34,    34,    36,    10,
      56,    78,    78,    18,    37,    33,     3,    69,    10,    51,
      38,    56,    79,    79,    18,    37,    74,    43,    43,    38,
      35,    70,    78,    78,    66,    83,    84,    38,    35,    75,
      79,    79,    13,    36,    70,    71,    38,     3,    17,    82,
      36,    75,    76,    38,    43,    17,    36,    37,    84,    34,
      17,    36,    70,    38,    61,    75,    77
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    44,    45,    46,    47,
      48,    48,    49,    49,    50,    51,    52,    52,    53,    53,
      54,    54,    54,    55,    55,    55,    55,    55,    56,    56,
      56,    57,    57,    57,    57,    58,    58,    58,    58,    58,
      59,    59,    59,    60,    60,    60,    60,    62,    61,    61,
      63,    63,    64,    64,    65,    66,    66,    66,    67,    67,
      68,    68,    69,    69,    69,    69,    70,    70,    70,    71,
      71,    72,    72,    73,    73,    74,    74,    75,    75,    75,
      76,    76,    77,    77,    78,    79,    81,    82,    80,    83,
      83,    83,    84,    84,    84,    85,    86,    86
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     2,     2,     1,     4,
       1,     2,     4,     3,     1,     1,     1,     3,     1,     3,
       1,     3,     3,     1,     3,     3,     3,     3,     1,     3,
       3,     1,     3,     3,     3,     1,     4,     2,     2,     2,
       3,     1,     0,     3,     1,     1,     1,     0,     4,     2,
       5,     7,     3,     2,     1,     1,     1,     1,     3,     4,
       1,     3,     1,     3,     2,     4,     1,     3,     2,     3,
       1,     4,     3,     1,     3,     3,     4,     1,     3,     2,
       3,     1,     4,     3,     1,     1,     0,     0,     8,     3,
       1,     0,     2,     5,     4,     5,     4,     2
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
#line 61 "src/parser.y"
            {
        ast.setRoot((yyvsp[0].stmttype));
    }
#line 1304 "src/parser.cpp"
    break;

  case 3: /* Stmts: Stmt  */
#line 66 "src/parser.y"
           {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1310 "src/parser.cpp"
    break;

  case 4: /* Stmts: Stmts Stmt  */
#line 67 "src/parser.y"
                {
        (yyval.stmttype) = new SeqNode((yyvsp[-1].stmttype), (yyvsp[0].stmttype));
    }
#line 1318 "src/parser.cpp"
    break;

  case 5: /* Stmt: AssignStmt  */
#line 74 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1324 "src/parser.cpp"
    break;

  case 6: /* Stmt: BlockStmt  */
#line 75 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1330 "src/parser.cpp"
    break;

  case 7: /* Stmt: IfStmt  */
#line 76 "src/parser.y"
             {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1336 "src/parser.cpp"
    break;

  case 8: /* Stmt: ReturnStmt  */
#line 77 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1342 "src/parser.cpp"
    break;

  case 9: /* Stmt: DeclStmt  */
#line 78 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1348 "src/parser.cpp"
    break;

  case 10: /* Stmt: FuncDef  */
#line 79 "src/parser.y"
              {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1354 "src/parser.cpp"
    break;

  case 11: /* Stmt: ExpStmt  */
#line 80 "src/parser.y"
              {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1360 "src/parser.cpp"
    break;

  case 12: /* Stmt: WhileStmt  */
#line 81 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1366 "src/parser.cpp"
    break;

  case 13: /* Stmt: EmptyStmt  */
#line 82 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype); }
#line 1372 "src/parser.cpp"
    break;

  case 14: /* Stmt: BreakStmt  */
#line 83 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1378 "src/parser.cpp"
    break;

  case 15: /* Stmt: ContinueStmt  */
#line 84 "src/parser.y"
                   {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1384 "src/parser.cpp"
    break;

  case 16: /* BreakStmt: BREAK SEMICOLON  */
#line 90 "src/parser.y"
                    {
            (yyval.stmttype) = new BreakStmt();
        }
#line 1392 "src/parser.cpp"
    break;

  case 17: /* ContinueStmt: CONTINUE SEMICOLON  */
#line 96 "src/parser.y"
                      {
            (yyval.stmttype) = new ContinueStmt();
        }
#line 1400 "src/parser.cpp"
    break;

  case 18: /* EmptyStmt: SEMICOLON  */
#line 102 "src/parser.y"
             {
        (yyval.stmttype) = new EmptyStmt();
    }
#line 1408 "src/parser.cpp"
    break;

  case 19: /* AssignStmt: left_expr ASSIGN expr SEMICOLON  */
#line 109 "src/parser.y"
                                    {
        (yyval.stmttype) = new AssignStmt((yyvsp[-3].exprtype), (yyvsp[-1].exprtype));
    }
#line 1416 "src/parser.cpp"
    break;

  case 20: /* left_expr: ID  */
#line 119 "src/parser.y"
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
#line 1434 "src/parser.cpp"
    break;

  case 21: /* left_expr: ID Array  */
#line 134 "src/parser.y"
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-1].strtype));
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[-1].strtype));
            delete [](char*)(yyvsp[-1].strtype);
            assert(se != nullptr);
        }
        Id* curId = new Id(se);
        curId -> setDimension((ArrDimNode*)(yyvsp[0].stmttype));
        (yyval.exprtype) = curId ;
        delete [](yyvsp[-1].strtype);
    }
#line 1453 "src/parser.cpp"
    break;

  case 22: /* Array: Array LSQUAREBRACKET Exp RSQUAREBRACKET  */
#line 155 "src/parser.y"
    {
        ArrDimNode* node = (ArrDimNode*)(yyvsp[-3].stmttype);
        node->addNextDim((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 1463 "src/parser.cpp"
    break;

  case 23: /* Array: LSQUAREBRACKET Exp RSQUAREBRACKET  */
#line 162 "src/parser.y"
    {
        ArrDimNode* node = new ArrDimNode();
        node->addNextDim((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;        
    }
#line 1473 "src/parser.cpp"
    break;

  case 24: /* expr: logical_or  */
#line 171 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1479 "src/parser.cpp"
    break;

  case 25: /* Exp: add_minus  */
#line 177 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1487 "src/parser.cpp"
    break;

  case 26: /* logical_or: logical_and  */
#line 184 "src/parser.y"
                {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1493 "src/parser.cpp"
    break;

  case 27: /* logical_or: logical_or OR logical_and  */
#line 187 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::OR, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1502 "src/parser.cpp"
    break;

  case 28: /* logical_and: equal_expr  */
#line 195 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1510 "src/parser.cpp"
    break;

  case 29: /* logical_and: logical_and AND equal_expr  */
#line 200 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::AND, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1519 "src/parser.cpp"
    break;

  case 30: /* equal_expr: rela_expr  */
#line 208 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1527 "src/parser.cpp"
    break;

  case 31: /* equal_expr: equal_expr EQUAL rela_expr  */
#line 212 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::EQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1536 "src/parser.cpp"
    break;

  case 32: /* equal_expr: equal_expr UNEQUAL rela_expr  */
#line 218 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::UNEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1545 "src/parser.cpp"
    break;

  case 33: /* rela_expr: add_minus  */
#line 227 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1553 "src/parser.cpp"
    break;

  case 34: /* rela_expr: rela_expr LESS add_minus  */
#line 232 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESS, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1562 "src/parser.cpp"
    break;

  case 35: /* rela_expr: rela_expr GREATER add_minus  */
#line 238 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATER, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1571 "src/parser.cpp"
    break;

  case 36: /* rela_expr: rela_expr LESSorEQUAL add_minus  */
#line 244 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESSorEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1580 "src/parser.cpp"
    break;

  case 37: /* rela_expr: rela_expr GREATERorEQUAL add_minus  */
#line 250 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATERorEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1589 "src/parser.cpp"
    break;

  case 38: /* add_minus: mult_div_mod  */
#line 258 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1597 "src/parser.cpp"
    break;

  case 39: /* add_minus: add_minus ADD mult_div_mod  */
#line 263 "src/parser.y"
    {
        SymbolEntry *se;
        //if ($1->getSymPtr()->getType()->isAnyInt() && $3->getSymPtr()->getType()->isAnyInt()) se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        //float
        //else se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
        if ((yyvsp[-2].exprtype)->getSymPtr()->getType()->isAnyFloat() || (yyvsp[0].exprtype)->getSymPtr()->getType()->isAnyFloat()) se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
        else se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::ADD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1611 "src/parser.cpp"
    break;

  case 40: /* add_minus: add_minus SUB mult_div_mod  */
#line 274 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getSymPtr()->getType()->isAnyFloat() || (yyvsp[0].exprtype)->getSymPtr()->getType()->isAnyFloat()) se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
        else se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::SUB, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1622 "src/parser.cpp"
    break;

  case 41: /* mult_div_mod: one_expr  */
#line 285 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1630 "src/parser.cpp"
    break;

  case 42: /* mult_div_mod: mult_div_mod MULTI one_expr  */
#line 290 "src/parser.y"
    {
        SymbolEntry *se;

        if ((yyvsp[-2].exprtype)->getSymPtr()->getType()->isAnyFloat() || (yyvsp[0].exprtype)->getSymPtr()->getType()->isAnyFloat()) se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
        else se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MULTI, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1642 "src/parser.cpp"
    break;

  case 43: /* mult_div_mod: mult_div_mod DIVIDE one_expr  */
#line 299 "src/parser.y"
    {
        SymbolEntry *se;

        if ((yyvsp[-2].exprtype)->getSymPtr()->getType()->isAnyFloat() || (yyvsp[0].exprtype)->getSymPtr()->getType()->isAnyFloat()) se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
        else se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::DIVIDE, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1654 "src/parser.cpp"
    break;

  case 44: /* mult_div_mod: mult_div_mod MOD one_expr  */
#line 308 "src/parser.y"
    {
        SymbolEntry *se;

        if ((yyvsp[-2].exprtype)->getSymPtr()->getType()->isAnyFloat() || (yyvsp[0].exprtype)->getSymPtr()->getType()->isAnyFloat()) se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
        else se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1666 "src/parser.cpp"
    break;

  case 45: /* one_expr: bas_expr  */
#line 320 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1674 "src/parser.cpp"
    break;

  case 46: /* one_expr: ID LPAREN func_argu RPAREN  */
#line 325 "src/parser.y"
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
#line 1692 "src/parser.cpp"
    break;

  case 47: /* one_expr: ADD one_expr  */
#line 340 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1700 "src/parser.cpp"
    break;

  case 48: /* one_expr: SUB one_expr  */
#line 345 "src/parser.y"
    {
        SymbolEntry *se ;
        if ((yyvsp[0].exprtype)->getSymPtr()->getType()->isAnyFloat())
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
        else
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingleExpr(se, SingleExpr::SUB, (yyvsp[0].exprtype));
    }
#line 1713 "src/parser.cpp"
    break;

  case 49: /* one_expr: NOT one_expr  */
#line 355 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new SingleExpr(se, SingleExpr::NOT, (yyvsp[0].exprtype));
    }
#line 1722 "src/parser.cpp"
    break;

  case 50: /* func_argu: func_argu COMMA Exp  */
#line 364 "src/parser.y"
    {
        FuncCallParamsNode* node = (FuncCallParamsNode*) (yyvsp[-2].stmttype);
        node->addNext((yyvsp[0].exprtype));
        (yyval.stmttype) = node;
    }
#line 1732 "src/parser.cpp"
    break;

  case 51: /* func_argu: Exp  */
#line 371 "src/parser.y"
    {
        FuncCallParamsNode* node = new FuncCallParamsNode();
        node->addNext((yyvsp[0].exprtype));
        (yyval.stmttype) = node;    
    }
#line 1742 "src/parser.cpp"
    break;

  case 52: /* func_argu: %empty  */
#line 378 "src/parser.y"
    {
        (yyval.stmttype) = nullptr;
    }
#line 1750 "src/parser.cpp"
    break;

  case 53: /* bas_expr: LPAREN expr RPAREN  */
#line 387 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[-1].exprtype);
    }
#line 1758 "src/parser.cpp"
    break;

  case 54: /* bas_expr: left_expr  */
#line 392 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1766 "src/parser.cpp"
    break;

  case 55: /* bas_expr: INTEGER  */
#line 397 "src/parser.y"
    {
        //fprintf(stderr,"stroe %d as int \n",$1);
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::constIntType, (yyvsp[0].itype));
        (yyval.exprtype) = new Constant(se);
    }
#line 1776 "src/parser.cpp"
    break;

  case 56: /* bas_expr: FLOATING  */
#line 405 "src/parser.y"
    {
        //fprintf(stderr,"stroe %d as float \n",$1);
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::constFloatType, (yyvsp[0].ftype));
        (yyval.exprtype) = new Constant(se);
    }
#line 1786 "src/parser.cpp"
    break;

  case 57: /* $@1: %empty  */
#line 414 "src/parser.y"
        {identifiers = new SymbolTable(identifiers);}
#line 1792 "src/parser.cpp"
    break;

  case 58: /* BlockStmt: LBRACE $@1 Stmts RBRACE  */
#line 416 "src/parser.y"
        {
            (yyval.stmttype) = new CompoundStmt((yyvsp[-1].stmttype));
            SymbolTable *top = identifiers;
            identifiers = identifiers->getPrev();
            delete top;
        }
#line 1803 "src/parser.cpp"
    break;

  case 59: /* BlockStmt: LBRACE RBRACE  */
#line 424 "src/parser.y"
    {
        (yyval.stmttype) = new CompoundStmt(nullptr);
    }
#line 1811 "src/parser.cpp"
    break;

  case 60: /* IfStmt: IF LPAREN Cond RPAREN Stmt  */
#line 430 "src/parser.y"
                                            {
        (yyval.stmttype) = new IfStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1819 "src/parser.cpp"
    break;

  case 61: /* IfStmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 433 "src/parser.y"
                                           {
        (yyval.stmttype) = new IfElseStmt((yyvsp[-4].exprtype), (yyvsp[-2].stmttype), (yyvsp[0].stmttype));
    }
#line 1827 "src/parser.cpp"
    break;

  case 62: /* ReturnStmt: RETURN expr SEMICOLON  */
#line 441 "src/parser.y"
    {
        (yyval.stmttype) = new ReturnStmt((yyvsp[-1].exprtype));
    }
#line 1835 "src/parser.cpp"
    break;

  case 63: /* ReturnStmt: RETURN SEMICOLON  */
#line 446 "src/parser.y"
    {
        (yyval.stmttype) = new ReturnStmt(nullptr);
    }
#line 1843 "src/parser.cpp"
    break;

  case 64: /* Cond: logical_or  */
#line 453 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1849 "src/parser.cpp"
    break;

  case 65: /* Type: INT  */
#line 457 "src/parser.y"
          {
        (yyval.type) = TypeSystem::intType;
        curType = TypeSystem::intType;
    }
#line 1858 "src/parser.cpp"
    break;

  case 66: /* Type: VOID  */
#line 461 "src/parser.y"
           {
        (yyval.type) = TypeSystem::voidType;
        curType = TypeSystem::voidType;
    }
#line 1867 "src/parser.cpp"
    break;

  case 67: /* Type: FLOAT  */
#line 466 "src/parser.y"
            {
        (yyval.type) = TypeSystem::floatType;
        curType = TypeSystem::floatType;
    }
#line 1876 "src/parser.cpp"
    break;

  case 68: /* DeclStmt: Type var_idlist SEMICOLON  */
#line 474 "src/parser.y"
                              {
        (yyval.stmttype) = (yyvsp[-1].stmttype) ;
    }
#line 1884 "src/parser.cpp"
    break;

  case 69: /* DeclStmt: CONST Type const_idlist SEMICOLON  */
#line 479 "src/parser.y"
    {
        (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 1892 "src/parser.cpp"
    break;

  case 70: /* var_idlist: var_id_decl  */
#line 487 "src/parser.y"
    {
            DeclStmt* node = new DeclStmt(false);
            node->addNext((DefNode*)(yyvsp[0].stmttype));
            (yyval.stmttype) = node;
    }
#line 1902 "src/parser.cpp"
    break;

  case 71: /* var_idlist: var_idlist COMMA var_id_decl  */
#line 494 "src/parser.y"
    {
            DeclStmt* node = (DeclStmt*) (yyvsp[-2].stmttype);
            node->addNext((DefNode*)(yyvsp[0].stmttype));
            (yyval.stmttype) = node;
    }
#line 1912 "src/parser.cpp"
    break;

  case 72: /* var_id_decl: ID  */
#line 506 "src/parser.y"
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
        //float
        else type = TypeSystem::floatType;
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), nullptr, false);
    }
#line 1935 "src/parser.cpp"
    break;

  case 73: /* var_id_decl: ID ASSIGN varExp  */
#line 526 "src/parser.y"
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
        //float
        else type = TypeSystem::floatType;
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), (Node*)(yyvsp[0].exprtype), false);
    }
#line 1959 "src/parser.cpp"
    break;

  case 74: /* var_id_decl: ID varArray  */
#line 547 "src/parser.y"
    {
        if(identifiers->isRedef((yyvsp[-1].strtype))) {
            fprintf(stderr, "identifier %s redefine\n", (yyvsp[-1].strtype));
            exit(EXIT_FAILURE);
        }
        //example a[1][3]
        Type* type;
        if(curType->isInt()){
            type = new ArrIntType();
        }
        //float 
        else{
            type = new ArrFloatType();
        }
        SymbolEntry* se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-1].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-1].strtype), se);
        Id* curId = new Id(se);
        curId -> setDimension((ArrDimNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = new DefNode(curId, nullptr, false, true);    
    }
#line 1985 "src/parser.cpp"
    break;

  case 75: /* var_id_decl: ID varArray ASSIGN varArrayValue  */
#line 570 "src/parser.y"
    {

        if(identifiers->isRedef((yyvsp[-3].strtype))) 
        {
            fprintf(stderr, "identifier %s redefine\n", (yyvsp[-3].strtype));
            exit(EXIT_FAILURE);
        }
        //example a[2][3] = {{3,3,4},{2,2,5}}
        Type* type;
        if(curType->isInt())
        {
            type = new ArrIntType();
        }
        //float
        else{
            type = new ArrFloatType();
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-3].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-3].strtype), se);
        Id* curId = new Id(se);
        curId -> setDimension((ArrDimNode*)(yyvsp[-2].stmttype));
        (yyval.stmttype) = new DefNode(curId, (Node*)(yyvsp[0].stmttype), false, true);    
    }
#line 2014 "src/parser.cpp"
    break;

  case 76: /* varArrayValue: varExp  */
#line 602 "src/parser.y"
    {
        //example int a[3] = x+4
        ArrValNode* node = new ArrValNode(false);
        node->setExp((ExprNode*)(yyvsp[0].exprtype));
        (yyval.stmttype) = node;        
    }
#line 2025 "src/parser.cpp"
    break;

  case 77: /* varArrayValue: LBRACE varValueList RBRACE  */
#line 610 "src/parser.y"
    {
        //example int a[3] = {1,3,5}
        (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 2034 "src/parser.cpp"
    break;

  case 78: /* varArrayValue: LBRACE RBRACE  */
#line 616 "src/parser.y"
    {
        //example int a[3] = {}
        (yyval.stmttype) = new ArrValNode(false);//不能没有值
    }
#line 2043 "src/parser.cpp"
    break;

  case 79: /* varValueList: varValueList COMMA varArrayValue  */
#line 626 "src/parser.y"
    {
        //int a[2][3] ={{1，3，5},{2，3，4}}
        ArrValNode* node = (ArrValNode*)(yyvsp[-2].stmttype);
        node->addChild((ArrValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 2054 "src/parser.cpp"
    break;

  case 80: /* varValueList: varArrayValue  */
#line 634 "src/parser.y"
    {
        ArrValNode* node = new ArrValNode(false);
        node->addChild((ArrValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;
    }
#line 2064 "src/parser.cpp"
    break;

  case 81: /* varArray: varArray LSQUAREBRACKET varExp RSQUAREBRACKET  */
#line 647 "src/parser.y"
    {
        //example [3][2]
        ArrDimNode* node = (ArrDimNode*)(yyvsp[-3].stmttype);
        node->addNextDim((yyvsp[-1].exprtype));//1.6pmdebug
        (yyval.stmttype) = node;
    }
#line 2075 "src/parser.cpp"
    break;

  case 82: /* varArray: LSQUAREBRACKET varExp RSQUAREBRACKET  */
#line 655 "src/parser.y"
    {
        //example [3]
        ArrDimNode* node = new ArrDimNode();
        node->addNextDim((yyvsp[-1].exprtype));//1.6pmdebug
        (yyval.stmttype) = node;        
    }
#line 2086 "src/parser.cpp"
    break;

  case 83: /* const_idlist: const_id_decl  */
#line 666 "src/parser.y"
    {
        DeclStmt* node = new DeclStmt(false);
        node->addNext((DefNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 2096 "src/parser.cpp"
    break;

  case 84: /* const_idlist: const_idlist COMMA const_id_decl  */
#line 673 "src/parser.y"
    {
        DeclStmt* node = (DeclStmt*) (yyvsp[-2].stmttype);
        node->addNext((DefNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 2106 "src/parser.cpp"
    break;

  case 85: /* const_id_decl: ID ASSIGN constExp  */
#line 684 "src/parser.y"
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
        //float
        else type = TypeSystem::constFloatType;
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), (Node*)(yyvsp[0].exprtype), true);//类型向上转换        
    }
#line 2128 "src/parser.cpp"
    break;

  case 86: /* const_id_decl: ID constArray ASSIGN conArrayValue  */
#line 703 "src/parser.y"
    {
        if(identifiers->isRedef((yyvsp[-3].strtype))) {
            fprintf(stderr, "identifier %s redefine\n", (yyvsp[-3].strtype));
            exit(EXIT_FAILURE);
        }
        Type* type;
        if(curType->isInt())
        {
            type = new ConstArrIntType();
        }
        //float
        else {
            type = new ConstArrFloatType();
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-3].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-3].strtype), se);
        Id* curId = new Id(se);
        curId -> setDimension((ArrDimNode*)(yyvsp[-2].stmttype));
        (yyval.stmttype) = new DefNode(curId, (Node*)(yyvsp[0].stmttype), true, true);   
    }
#line 2154 "src/parser.cpp"
    break;

  case 87: /* conArrayValue: constExp  */
#line 730 "src/parser.y"
    {
        ArrValNode* node = new ArrValNode(true);
        node->setExp((ExprNode*)(yyvsp[0].exprtype));
        (yyval.stmttype) = node;        
    }
#line 2164 "src/parser.cpp"
    break;

  case 88: /* conArrayValue: LBRACE conValueList RBRACE  */
#line 737 "src/parser.y"
    {
         (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 2172 "src/parser.cpp"
    break;

  case 89: /* conArrayValue: LBRACE RBRACE  */
#line 742 "src/parser.y"
    {
        (yyval.stmttype) = new ArrValNode(true);
    }
#line 2180 "src/parser.cpp"
    break;

  case 90: /* conValueList: conValueList COMMA conArrayValue  */
#line 751 "src/parser.y"
    {
        ArrValNode* node = (ArrValNode*)(yyvsp[-2].stmttype);
        node->addChild((ArrValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 2190 "src/parser.cpp"
    break;

  case 91: /* conValueList: conArrayValue  */
#line 758 "src/parser.y"
    {
        ArrValNode* node = new ArrValNode(true);
        node->addChild((ArrValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;
    }
#line 2200 "src/parser.cpp"
    break;

  case 92: /* constArray: constArray LSQUAREBRACKET constExp RSQUAREBRACKET  */
#line 770 "src/parser.y"
    {
        ArrDimNode* node = (ArrDimNode*)(yyvsp[-3].stmttype);
        node->addNextDim((yyvsp[-1].exprtype));//1.6pmdebug
        (yyval.stmttype) = node;
    }
#line 2210 "src/parser.cpp"
    break;

  case 93: /* constArray: LSQUAREBRACKET constExp RSQUAREBRACKET  */
#line 777 "src/parser.y"
    {
        ArrDimNode* node = new ArrDimNode();
        node->addNextDim((yyvsp[-1].exprtype));//1.6pmdebug
        (yyval.stmttype) = node;        
    }
#line 2220 "src/parser.cpp"
    break;

  case 94: /* varExp: add_minus  */
#line 785 "src/parser.y"
             {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2228 "src/parser.cpp"
    break;

  case 95: /* constExp: add_minus  */
#line 792 "src/parser.y"
             {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2236 "src/parser.cpp"
    break;

  case 96: /* $@2: %empty  */
#line 800 "src/parser.y"
    {
        Type *funcType;
        funcType = new FunctionType((yyvsp[-1].type),{});
        SymbolEntry *se = new IdentifierSymbolEntry(funcType, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        identifiers = new SymbolTable(identifiers);
    }
#line 2248 "src/parser.cpp"
    break;

  case 97: /* $@3: %empty  */
#line 809 "src/parser.y"
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-3].strtype));
        assert(se != nullptr);
        if((yyvsp[0].stmttype)!=nullptr)
        {
            ((FunctionType*)(se->getType()))->setparamsType(((FuncDefParamsNode*)(yyvsp[0].stmttype))->getParamsType());
        }
    }
#line 2262 "src/parser.cpp"
    break;

  case 98: /* FuncDef: Type ID $@2 LPAREN FuncParams $@3 RPAREN BlockStmt  */
#line 820 "src/parser.y"
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-6].strtype));
        assert(se != nullptr);
        (yyval.stmttype) = new FunctionDef(se,(FuncDefParamsNode*)(yyvsp[-3].stmttype),(yyvsp[0].stmttype));
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        delete [](yyvsp[-6].strtype);
    }
#line 2277 "src/parser.cpp"
    break;

  case 99: /* FuncParams: FuncParams COMMA FuncParam  */
#line 834 "src/parser.y"
                               {
        FuncDefParamsNode* node = (FuncDefParamsNode*)(yyvsp[-2].stmttype);
        node->addNext(((DefNode*)(yyvsp[0].stmttype))->getId());
        (yyval.stmttype) = node;
    }
#line 2287 "src/parser.cpp"
    break;

  case 100: /* FuncParams: FuncParam  */
#line 840 "src/parser.y"
              {
        FuncDefParamsNode* node = new FuncDefParamsNode();
        node->addNext(((DefNode*)(yyvsp[0].stmttype))->getId());
        (yyval.stmttype) = node;
    }
#line 2297 "src/parser.cpp"
    break;

  case 101: /* FuncParams: %empty  */
#line 846 "src/parser.y"
           {
        (yyval.stmttype) = nullptr;
    }
#line 2305 "src/parser.cpp"
    break;

  case 102: /* FuncParam: Type ID  */
#line 856 "src/parser.y"
            {
        SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), nullptr, false);
    }
#line 2315 "src/parser.cpp"
    break;

  case 103: /* FuncParam: Type ID LSQUAREBRACKET RSQUAREBRACKET constArray  */
#line 862 "src/parser.y"
                                                        {
            Type* arrayType; 
            if((yyvsp[-4].type)==TypeSystem::intType){
                arrayType = new ArrIntType();
            }
            //float
            else{
                arrayType = new ArrFloatType();
            }
            SymbolEntry *defaultDim = new ConstantSymbolEntry(TypeSystem::constIntType, -1);
            dynamic_cast<ArrDimNode*>((yyvsp[0].stmttype)) -> setParam(new Constant(defaultDim));
            SymbolEntry *se = new IdentifierSymbolEntry(arrayType, (yyvsp[-3].strtype), identifiers->getLevel());
            identifiers->install((yyvsp[-3].strtype), se);
            Id* id = new Id(se);
            id->setDimension((ArrDimNode*)(yyvsp[0].stmttype));
            (yyval.stmttype) = new DefNode(id, nullptr, false, true);
        }
#line 2337 "src/parser.cpp"
    break;

  case 104: /* FuncParam: Type ID LSQUAREBRACKET RSQUAREBRACKET  */
#line 879 "src/parser.y"
                                             {
            Type* arrayType; 
            if((yyvsp[-3].type)==TypeSystem::intType){
                arrayType = new ArrIntType();
            }
            //float
            else if((yyvsp[-3].type)==TypeSystem::floatType){
                arrayType = new ArrFloatType();
            }
            SymbolEntry *defaultDim = new ConstantSymbolEntry(TypeSystem::constIntType, -1);
            ArrDimNode* Dim = new ArrDimNode();
            Dim -> addNextDim(new Constant(defaultDim));
            SymbolEntry *se = new IdentifierSymbolEntry(arrayType, (yyvsp[-2].strtype), identifiers->getLevel());
            identifiers->install((yyvsp[-2].strtype), se);
            Id* id = new Id(se);
            id->setDimension(Dim);
            (yyval.stmttype) = new DefNode(id, nullptr, false, true);
        }
#line 2360 "src/parser.cpp"
    break;

  case 105: /* WhileStmt: WHILE LPAREN Cond RPAREN Stmt  */
#line 903 "src/parser.y"
    {
        (yyval.stmttype) = new WhileStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 2368 "src/parser.cpp"
    break;

  case 106: /* ExpStmt: ExpStmt COMMA Exp SEMICOLON  */
#line 910 "src/parser.y"
                               {
        ExprStmtNode* node = (ExprStmtNode*)(yyvsp[-3].stmttype);
        node->addNext((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 2378 "src/parser.cpp"
    break;

  case 107: /* ExpStmt: Exp SEMICOLON  */
#line 916 "src/parser.y"
                 {
        ExprStmtNode* node = new ExprStmtNode();
        node->addNext((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 2388 "src/parser.cpp"
    break;


#line 2392 "src/parser.cpp"

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

#line 922 "src/parser.y"


int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
