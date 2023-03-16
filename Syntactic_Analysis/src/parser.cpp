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
  YYSYMBOL_EmptyStmt = 44,                 /* EmptyStmt  */
  YYSYMBOL_BlockStmt = 45,                 /* BlockStmt  */
  YYSYMBOL_46_1 = 46,                      /* $@1  */
  YYSYMBOL_IfStmt = 47,                    /* IfStmt  */
  YYSYMBOL_WhileStmt = 48,                 /* WhileStmt  */
  YYSYMBOL_Cond = 49,                      /* Cond  */
  YYSYMBOL_BreakStmt = 50,                 /* BreakStmt  */
  YYSYMBOL_ContinueStmt = 51,              /* ContinueStmt  */
  YYSYMBOL_ReturnStmt = 52,                /* ReturnStmt  */
  YYSYMBOL_ExpStmt = 53,                   /* ExpStmt  */
  YYSYMBOL_AssignStmt = 54,                /* AssignStmt  */
  YYSYMBOL_left_expr = 55,                 /* left_expr  */
  YYSYMBOL_Array = 56,                     /* Array  */
  YYSYMBOL_Exp = 57,                       /* Exp  */
  YYSYMBOL_logical_or = 58,                /* logical_or  */
  YYSYMBOL_logical_and = 59,               /* logical_and  */
  YYSYMBOL_equal_expr = 60,                /* equal_expr  */
  YYSYMBOL_rela_expr = 61,                 /* rela_expr  */
  YYSYMBOL_add_minus = 62,                 /* add_minus  */
  YYSYMBOL_mult_div_mod = 63,              /* mult_div_mod  */
  YYSYMBOL_one_expr = 64,                  /* one_expr  */
  YYSYMBOL_bas_expr = 65,                  /* bas_expr  */
  YYSYMBOL_func_argu = 66,                 /* func_argu  */
  YYSYMBOL_DeclStmt = 67,                  /* DeclStmt  */
  YYSYMBOL_const_idlist = 68,              /* const_idlist  */
  YYSYMBOL_const_id_decl = 69,             /* const_id_decl  */
  YYSYMBOL_conArrayValue = 70,             /* conArrayValue  */
  YYSYMBOL_conValueList = 71,              /* conValueList  */
  YYSYMBOL_var_idlist = 72,                /* var_idlist  */
  YYSYMBOL_var_id_decl = 73,               /* var_id_decl  */
  YYSYMBOL_varArrayValue = 74,             /* varArrayValue  */
  YYSYMBOL_varValueList = 75,              /* varValueList  */
  YYSYMBOL_varExp = 76,                    /* varExp  */
  YYSYMBOL_constExp = 77,                  /* constExp  */
  YYSYMBOL_varArray = 78,                  /* varArray  */
  YYSYMBOL_constArray = 79,                /* constArray  */
  YYSYMBOL_FuncDef = 80,                   /* FuncDef  */
  YYSYMBOL_81_2 = 81,                      /* $@2  */
  YYSYMBOL_82_3 = 82,                      /* $@3  */
  YYSYMBOL_FuncParams = 83,                /* FuncParams  */
  YYSYMBOL_FuncParam = 84,                 /* FuncParam  */
  YYSYMBOL_expr = 85,                      /* expr  */
  YYSYMBOL_Type = 86                       /* Type  */
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
#define YYLAST   239

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  47
/* YYNRULES -- Number of rules.  */
#define YYNRULES  105
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  176

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
       0,    59,    59,    65,    66,    71,    72,    73,    74,    75,
      76,    77,    78,    79,    80,    81,    86,    94,    94,   103,
     110,   114,   122,   130,   136,   144,   152,   157,   163,   168,
     178,   186,   200,   219,   226,   239,   248,   250,   259,   264,
     273,   277,   283,   292,   297,   303,   309,   315,   324,   329,
     343,   360,   365,   379,   393,   410,   415,   429,   434,   440,
     451,   456,   461,   467,   476,   483,   490,   499,   504,   512,
     519,   529,   544,   566,   573,   578,   586,   593,   604,   611,
     622,   638,   654,   671,   693,   700,   705,   713,   720,   730,
     737,   744,   752,   761,   770,   760,   794,   799,   804,   811,
     817,   834,   854,   858,   862,   866
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
  "$accept", "Program", "Stmts", "Stmt", "EmptyStmt", "BlockStmt", "$@1",
  "IfStmt", "WhileStmt", "Cond", "BreakStmt", "ContinueStmt", "ReturnStmt",
  "ExpStmt", "AssignStmt", "left_expr", "Array", "Exp", "logical_or",
  "logical_and", "equal_expr", "rela_expr", "add_minus", "mult_div_mod",
  "one_expr", "bas_expr", "func_argu", "DeclStmt", "const_idlist",
  "const_id_decl", "conArrayValue", "conValueList", "var_idlist",
  "var_id_decl", "varArrayValue", "varValueList", "varExp", "constExp",
  "varArray", "constArray", "FuncDef", "$@2", "$@3", "FuncParams",
  "FuncParam", "expr", "Type", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-138)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-94)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     204,    55,  -138,  -138,    82,  -138,  -138,  -138,  -138,    28,
     -11,     2,    20,    36,   196,   196,   196,   196,    23,    95,
     204,  -138,  -138,  -138,  -138,  -138,  -138,  -138,  -138,     3,
    -138,    79,  -138,    24,    78,  -138,  -138,  -138,  -138,   110,
     196,   196,    85,   114,  -138,  -138,   104,   105,    46,    80,
      24,   116,   196,   196,  -138,  -138,  -138,  -138,  -138,    90,
    -138,   204,  -138,  -138,  -138,   196,   196,   196,   196,   196,
     196,   196,    40,     9,  -138,  -138,    -9,    92,   196,     0,
      19,  -138,   196,   196,   196,   196,   196,   196,   196,   196,
    -138,    98,   104,   102,  -138,   170,  -138,   132,    78,    78,
    -138,  -138,  -138,   196,    85,   122,   115,  -138,   146,   196,
    -138,  -138,   112,   196,    85,   133,  -138,   114,   105,    46,
      80,    80,    24,    24,    24,    24,   204,   204,  -138,  -138,
      24,  -138,   111,    82,     5,  -138,  -138,  -138,    24,  -138,
     130,  -138,   139,  -138,    12,  -138,  -138,   136,  -138,   153,
      66,  -138,  -138,   204,  -138,  -138,     7,    82,   125,   123,
    -138,  -138,    17,  -138,   111,  -138,  -138,   129,   131,   130,
    -138,  -138,  -138,   134,  -138,  -138
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    31,    62,    63,     0,   103,   104,   105,    16,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    17,     0,
       2,     3,    13,     7,     8,    12,    14,    15,     9,     0,
       5,    61,    29,    35,    48,    51,    55,    10,    11,     0,
      66,     0,    32,     0,    27,    61,   102,    36,    38,    40,
      43,     0,     0,     0,    24,    25,    57,    58,    59,     0,
      19,     0,     1,     4,     6,     0,     0,     0,     0,     0,
       0,     0,    80,     0,    78,    65,     0,     0,     0,     0,
       0,    69,     0,     0,     0,     0,     0,     0,     0,     0,
      26,     0,    23,     0,    60,     0,    28,     0,    49,    50,
      52,    53,    54,     0,    91,    82,     0,    67,     0,     0,
      56,    34,     0,     0,    92,     0,    68,     0,    37,    39,
      41,    42,    44,    45,    47,    46,     0,     0,    18,    30,
      89,    81,     0,    98,    80,    79,    64,    33,    90,    71,
       0,    70,    20,    22,     0,    83,    84,    94,    97,     0,
       0,    72,    73,     0,    86,    88,     0,     0,     0,    99,
      75,    77,     0,    21,     0,    85,    96,     0,     0,     0,
      74,    87,    95,   101,    76,   100
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -138,  -138,   106,    -8,  -138,    16,  -138,  -138,  -138,   117,
    -138,  -138,  -138,  -138,  -138,     1,    -1,   -37,    22,    86,
     107,    27,    -3,    53,    -5,  -138,  -138,  -138,  -138,    70,
     -93,  -138,  -138,    81,  -137,  -138,    88,    75,  -138,    21,
    -138,  -138,  -138,  -138,    35,   -12,    -2
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    19,    20,    21,    22,    23,    61,    24,    25,    91,
      26,    27,    28,    29,    30,    45,   104,    32,    46,    47,
      48,    49,    33,    34,    35,    36,    76,    37,    80,    81,
     151,   162,    73,    74,   145,   156,   146,   152,   105,   115,
      38,   106,   158,   147,   148,    51,    39
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      42,    31,    43,    75,    77,    59,    50,   155,   109,    56,
      57,    58,    63,    64,    50,     1,     2,     3,   113,   107,
      65,    31,    52,   103,   164,   110,   108,   171,    96,   116,
      54,     1,     2,     3,   169,    53,   117,    41,    44,    14,
      15,   112,    41,   165,    16,    17,    55,   144,   154,    50,
      50,    67,    68,   170,    97,    14,    15,   161,   103,    60,
      16,    17,    31,    50,   100,   101,   102,    84,    85,     1,
       2,     3,   136,   -93,    92,    92,   174,    41,   114,    50,
      50,    50,    50,   122,   123,   124,   125,    63,    40,     5,
       6,     7,    41,    14,    15,    62,    31,    66,    16,    17,
     130,   150,   160,    86,    87,    88,    89,    69,    70,    71,
     138,   120,   121,    72,     1,     2,     3,    79,   142,   143,
      98,    99,    78,    82,    94,    83,    90,    31,    31,   130,
     111,   149,   126,     1,     2,     3,   127,   138,    14,    15,
     132,   130,   129,    16,    17,   163,   144,   138,   133,   134,
     137,   140,   153,   157,    31,   149,   159,    14,    15,   167,
     168,   130,    16,    17,    18,   150,   138,    95,   118,   173,
      93,    41,   114,     1,     2,     3,     4,     5,     6,     7,
       8,     9,    10,   172,    11,    12,    13,   141,   139,   135,
     119,   131,   166,     0,   175,     0,     0,    14,    15,     1,
       2,     3,    16,    17,     0,    18,   128,     1,     2,     3,
       4,     5,     6,     7,     8,     9,    10,     0,    11,    12,
      13,     0,     0,    14,    15,     0,     0,     0,    16,    17,
       0,    14,    15,     0,     0,     0,    16,    17,     0,    18
};

static const yytype_int16 yycheck[] =
{
       1,     0,     4,    40,    41,    17,     9,   144,    17,    14,
      15,    16,    20,    10,    17,     3,     4,     5,    18,    10,
      17,    20,    33,    18,    17,    34,    17,   164,    65,    10,
      10,     3,     4,     5,    17,    33,    17,    37,    10,    27,
      28,    78,    37,    36,    32,    33,    10,    35,    36,    52,
      53,    27,    28,    36,    66,    27,    28,   150,    18,    36,
      32,    33,    61,    66,    69,    70,    71,    21,    22,     3,
       4,     5,   109,    33,    52,    53,   169,    37,    79,    82,
      83,    84,    85,    86,    87,    88,    89,    95,    33,     7,
       8,     9,    37,    27,    28,     0,    95,    18,    32,    33,
     103,    35,    36,    23,    24,    25,    26,    29,    30,    31,
     113,    84,    85,     3,     3,     4,     5,     3,   126,   127,
      67,    68,    37,    19,    34,    20,    10,   126,   127,   132,
      38,   133,    34,     3,     4,     5,    34,   140,    27,    28,
      18,   144,    10,    32,    33,   153,    35,   150,    33,     3,
      38,    18,    13,    17,   153,   157,     3,    27,    28,    34,
      37,   164,    32,    33,    35,    35,   169,    61,    82,    38,
      53,    37,   173,     3,     4,     5,     6,     7,     8,     9,
      10,    11,    12,   167,    14,    15,    16,   117,   113,   108,
      83,   103,   157,    -1,   173,    -1,    -1,    27,    28,     3,
       4,     5,    32,    33,    -1,    35,    36,     3,     4,     5,
       6,     7,     8,     9,    10,    11,    12,    -1,    14,    15,
      16,    -1,    -1,    27,    28,    -1,    -1,    -1,    32,    33,
      -1,    27,    28,    -1,    -1,    -1,    32,    33,    -1,    35
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    14,    15,    16,    27,    28,    32,    33,    35,    41,
      42,    43,    44,    45,    47,    48,    50,    51,    52,    53,
      54,    55,    57,    62,    63,    64,    65,    67,    80,    86,
      33,    37,    56,    86,    10,    55,    58,    59,    60,    61,
      62,    85,    33,    33,    10,    10,    64,    64,    64,    85,
      36,    46,     0,    43,    10,    17,    18,    27,    28,    29,
      30,    31,     3,    72,    73,    57,    66,    57,    37,     3,
      68,    69,    19,    20,    21,    22,    23,    24,    25,    26,
      10,    49,    58,    49,    34,    42,    57,    85,    63,    63,
      64,    64,    64,    18,    56,    78,    81,    10,    17,    17,
      34,    38,    57,    18,    56,    79,    10,    17,    59,    60,
      61,    61,    62,    62,    62,    62,    34,    34,    36,    10,
      62,    76,    18,    33,     3,    73,    57,    38,    62,    77,
      18,    69,    43,    43,    35,    74,    76,    83,    84,    86,
      35,    70,    77,    13,    36,    74,    75,    17,    82,     3,
      36,    70,    71,    43,    17,    36,    84,    34,    37,    17,
      36,    74,    45,    38,    70,    79
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    44,    46,    45,    45,
      47,    47,    48,    49,    50,    51,    52,    52,    53,    53,
      54,    55,    55,    56,    56,    57,    58,    58,    59,    59,
      60,    60,    60,    61,    61,    61,    61,    61,    62,    62,
      62,    63,    63,    63,    63,    64,    64,    64,    64,    64,
      65,    65,    65,    65,    66,    66,    66,    67,    67,    68,
      68,    69,    69,    70,    70,    70,    71,    71,    72,    72,
      73,    73,    73,    73,    74,    74,    74,    75,    75,    76,
      77,    78,    79,    81,    82,    80,    83,    83,    83,    84,
      84,    84,    85,    86,    86,    86
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     2,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     0,     4,     2,
       5,     7,     5,     1,     2,     2,     3,     2,     3,     1,
       4,     1,     2,     4,     3,     1,     1,     3,     1,     3,
       1,     3,     3,     1,     3,     3,     3,     3,     1,     3,
       3,     1,     3,     3,     3,     1,     4,     2,     2,     2,
       3,     1,     1,     1,     3,     1,     0,     3,     4,     1,
       3,     3,     4,     1,     3,     2,     3,     1,     1,     3,
       1,     3,     2,     4,     1,     3,     2,     3,     1,     1,
       1,     1,     1,     0,     0,     8,     3,     1,     0,     2,
       5,     4,     1,     1,     1,     1
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
#line 59 "src/parser.y"
            {
        ast.setRoot((yyvsp[0].stmttype));
    }
#line 1294 "src/parser.cpp"
    break;

  case 3: /* Stmts: Stmt  */
#line 65 "src/parser.y"
           {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1300 "src/parser.cpp"
    break;

  case 4: /* Stmts: Stmts Stmt  */
#line 66 "src/parser.y"
                 {(yyval.stmttype) = new SeqNode((yyvsp[-1].stmttype), (yyvsp[0].stmttype));}
#line 1306 "src/parser.cpp"
    break;

  case 5: /* Stmt: AssignStmt  */
#line 71 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1312 "src/parser.cpp"
    break;

  case 6: /* Stmt: ExpStmt SEMICOLON  */
#line 72 "src/parser.y"
                       {(yyval.stmttype)=(yyvsp[-1].stmttype);}
#line 1318 "src/parser.cpp"
    break;

  case 7: /* Stmt: BlockStmt  */
#line 73 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1324 "src/parser.cpp"
    break;

  case 8: /* Stmt: IfStmt  */
#line 74 "src/parser.y"
             {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1330 "src/parser.cpp"
    break;

  case 9: /* Stmt: ReturnStmt  */
#line 75 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1336 "src/parser.cpp"
    break;

  case 10: /* Stmt: DeclStmt  */
#line 76 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1342 "src/parser.cpp"
    break;

  case 11: /* Stmt: FuncDef  */
#line 77 "src/parser.y"
              {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1348 "src/parser.cpp"
    break;

  case 12: /* Stmt: WhileStmt  */
#line 78 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1354 "src/parser.cpp"
    break;

  case 13: /* Stmt: EmptyStmt  */
#line 79 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype); }
#line 1360 "src/parser.cpp"
    break;

  case 14: /* Stmt: BreakStmt  */
#line 80 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1366 "src/parser.cpp"
    break;

  case 15: /* Stmt: ContinueStmt  */
#line 81 "src/parser.y"
                   {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1372 "src/parser.cpp"
    break;

  case 16: /* EmptyStmt: SEMICOLON  */
#line 87 "src/parser.y"
    {
        (yyval.stmttype) = new EmptyStmt();
    }
#line 1380 "src/parser.cpp"
    break;

  case 17: /* $@1: %empty  */
#line 94 "src/parser.y"
            {identifiers = new SymbolTable(identifiers);}
#line 1386 "src/parser.cpp"
    break;

  case 18: /* BlockStmt: LBRACE $@1 Stmts RBRACE  */
#line 96 "src/parser.y"
    {
        (yyval.stmttype) = new CompoundStmt((yyvsp[-1].stmttype));
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
    }
#line 1397 "src/parser.cpp"
    break;

  case 19: /* BlockStmt: LBRACE RBRACE  */
#line 104 "src/parser.y"
    {
        (yyval.stmttype) = new CompoundStmt(nullptr);
    }
#line 1405 "src/parser.cpp"
    break;

  case 20: /* IfStmt: IF LPAREN Cond RPAREN Stmt  */
#line 111 "src/parser.y"
    {
        (yyval.stmttype) = new IfStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1413 "src/parser.cpp"
    break;

  case 21: /* IfStmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 115 "src/parser.y"
    {
        (yyval.stmttype) = new IfElseStmt((yyvsp[-4].exprtype), (yyvsp[-2].stmttype), (yyvsp[0].stmttype));
    }
#line 1421 "src/parser.cpp"
    break;

  case 22: /* WhileStmt: WHILE LPAREN Cond RPAREN Stmt  */
#line 123 "src/parser.y"
    {
        (yyval.stmttype) = new WhileStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1429 "src/parser.cpp"
    break;

  case 23: /* Cond: logical_or  */
#line 130 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1435 "src/parser.cpp"
    break;

  case 24: /* BreakStmt: BREAK SEMICOLON  */
#line 137 "src/parser.y"
    {
        (yyval.stmttype) = new BreakStmt();
    }
#line 1443 "src/parser.cpp"
    break;

  case 25: /* ContinueStmt: CONTINUE SEMICOLON  */
#line 145 "src/parser.y"
    {
        (yyval.stmttype) = new ContinueStmt();
    }
#line 1451 "src/parser.cpp"
    break;

  case 26: /* ReturnStmt: RETURN expr SEMICOLON  */
#line 153 "src/parser.y"
    {
        (yyval.stmttype) = new ReturnStmt((yyvsp[-1].exprtype));
    }
#line 1459 "src/parser.cpp"
    break;

  case 27: /* ReturnStmt: RETURN SEMICOLON  */
#line 158 "src/parser.y"
    {
        (yyval.stmttype) = new ReturnStmt(nullptr);
    }
#line 1467 "src/parser.cpp"
    break;

  case 28: /* ExpStmt: ExpStmt COMMA Exp  */
#line 163 "src/parser.y"
                          {
            ExprStmtNode* node = (ExprStmtNode*)(yyvsp[-2].stmttype);
            node->addNext((yyvsp[0].exprtype));
            (yyval.stmttype) = node;
        }
#line 1477 "src/parser.cpp"
    break;

  case 29: /* ExpStmt: Exp  */
#line 168 "src/parser.y"
            {
            ExprStmtNode* node = new ExprStmtNode();
            node->addNext((yyvsp[0].exprtype));
            (yyval.stmttype) = node;
        }
#line 1487 "src/parser.cpp"
    break;

  case 30: /* AssignStmt: left_expr ASSIGN expr SEMICOLON  */
#line 179 "src/parser.y"
    {
        (yyval.stmttype) = new AssignStmt((yyvsp[-3].exprtype), (yyvsp[-1].exprtype));
    }
#line 1495 "src/parser.cpp"
    break;

  case 31: /* left_expr: ID  */
#line 187 "src/parser.y"
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[0].strtype));
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[0].strtype));
            delete [](char*)(yyvsp[0].strtype);
            assert(se != nullptr);
        }
        (yyval.exprtype) = new Id(se);
        delete [](yyvsp[0].strtype);
    }
#line 1512 "src/parser.cpp"
    break;

  case 32: /* left_expr: ID Array  */
#line 201 "src/parser.y"
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
        curId -> AddDimension((ExprStmtNode*)(yyvsp[0].stmttype));
        (yyval.exprtype) = curId ;
        delete [](yyvsp[-1].strtype);
    }
#line 1531 "src/parser.cpp"
    break;

  case 33: /* Array: Array LSQUAREBRACKET Exp RSQUAREBRACKET  */
#line 220 "src/parser.y"
    {
        ExprStmtNode* node = (ExprStmtNode*)(yyvsp[-3].stmttype);
        node->addNext((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 1541 "src/parser.cpp"
    break;

  case 34: /* Array: LSQUAREBRACKET Exp RSQUAREBRACKET  */
#line 227 "src/parser.y"
    {
        ExprStmtNode* node = new ExprStmtNode();
        node->addNext((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;        
    }
#line 1551 "src/parser.cpp"
    break;

  case 35: /* Exp: add_minus  */
#line 240 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1559 "src/parser.cpp"
    break;

  case 36: /* logical_or: logical_and  */
#line 248 "src/parser.y"
                {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1565 "src/parser.cpp"
    break;

  case 37: /* logical_or: logical_or OR logical_and  */
#line 251 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::OR, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1574 "src/parser.cpp"
    break;

  case 38: /* logical_and: equal_expr  */
#line 260 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1582 "src/parser.cpp"
    break;

  case 39: /* logical_and: logical_and AND equal_expr  */
#line 265 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::AND, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1591 "src/parser.cpp"
    break;

  case 40: /* equal_expr: rela_expr  */
#line 274 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1599 "src/parser.cpp"
    break;

  case 41: /* equal_expr: equal_expr EQUAL rela_expr  */
#line 278 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::EQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1608 "src/parser.cpp"
    break;

  case 42: /* equal_expr: equal_expr UNEQUAL rela_expr  */
#line 284 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::UNEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1617 "src/parser.cpp"
    break;

  case 43: /* rela_expr: add_minus  */
#line 293 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1625 "src/parser.cpp"
    break;

  case 44: /* rela_expr: rela_expr LESS add_minus  */
#line 298 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESS, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1634 "src/parser.cpp"
    break;

  case 45: /* rela_expr: rela_expr GREATER add_minus  */
#line 304 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATER, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1643 "src/parser.cpp"
    break;

  case 46: /* rela_expr: rela_expr LESSorEQUAL add_minus  */
#line 310 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESSorEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1652 "src/parser.cpp"
    break;

  case 47: /* rela_expr: rela_expr GREATERorEQUAL add_minus  */
#line 316 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATERorEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1661 "src/parser.cpp"
    break;

  case 48: /* add_minus: mult_div_mod  */
#line 325 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1669 "src/parser.cpp"
    break;

  case 49: /* add_minus: add_minus ADD mult_div_mod  */
#line 330 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::ADD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1686 "src/parser.cpp"
    break;

  case 50: /* add_minus: add_minus SUB mult_div_mod  */
#line 344 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::SUB, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1703 "src/parser.cpp"
    break;

  case 51: /* mult_div_mod: one_expr  */
#line 361 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1711 "src/parser.cpp"
    break;

  case 52: /* mult_div_mod: mult_div_mod MULTI one_expr  */
#line 366 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MULTI, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1728 "src/parser.cpp"
    break;

  case 53: /* mult_div_mod: mult_div_mod DIVIDE one_expr  */
#line 380 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::DIVIDE, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1745 "src/parser.cpp"
    break;

  case 54: /* mult_div_mod: mult_div_mod MOD one_expr  */
#line 394 "src/parser.y"
    {
        SymbolEntry *se;
        if ((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt())
        {
            se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        }
        else
        {
            se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());            
        }
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1762 "src/parser.cpp"
    break;

  case 55: /* one_expr: bas_expr  */
#line 411 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1770 "src/parser.cpp"
    break;

  case 56: /* one_expr: ID LPAREN func_argu RPAREN  */
#line 416 "src/parser.y"
    {
        SymbolEntry *se;
            se = identifiers->lookup((yyvsp[-3].strtype));
            if(se == nullptr)
            {
                fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[-3].strtype));
                delete [](char*)(yyvsp[-3].strtype);
                assert(se != nullptr);
            }
            SymbolEntry *tmp = new TemporarySymbolEntry(se->getType(), SymbolTable::getLabel());
            (yyval.exprtype) = new FuncCallNode(tmp, new Id(se), (FuncCallParamsNode*)(yyvsp[-1].stmttype));
    }
#line 1787 "src/parser.cpp"
    break;

  case 57: /* one_expr: ADD one_expr  */
#line 430 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1795 "src/parser.cpp"
    break;

  case 58: /* one_expr: SUB one_expr  */
#line 435 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry((yyvsp[0].exprtype)->getType(), SymbolTable::getLabel());
        (yyval.exprtype) = new SingleExpr(se, SingleExpr::SUB, (yyvsp[0].exprtype));
    }
#line 1804 "src/parser.cpp"
    break;

  case 59: /* one_expr: NOT one_expr  */
#line 441 "src/parser.y"
    {
        SymbolEntry *se = new TemporarySymbolEntry((yyvsp[0].exprtype)->getType(), SymbolTable::getLabel());
        (yyval.exprtype) = new SingleExpr(se, SingleExpr::NOT, (yyvsp[0].exprtype));
    }
#line 1813 "src/parser.cpp"
    break;

  case 60: /* bas_expr: LPAREN expr RPAREN  */
#line 452 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[-1].exprtype);
    }
#line 1821 "src/parser.cpp"
    break;

  case 61: /* bas_expr: left_expr  */
#line 457 "src/parser.y"
    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1829 "src/parser.cpp"
    break;

  case 62: /* bas_expr: INTEGER  */
#line 462 "src/parser.y"
    {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::intType, (yyvsp[0].itype));
        (yyval.exprtype) = new Constant(se);
    }
#line 1838 "src/parser.cpp"
    break;

  case 63: /* bas_expr: FLOATING  */
#line 468 "src/parser.y"
    {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::floatType, (yyvsp[0].ftype));
        (yyval.exprtype) = new Constant(se);        
    }
#line 1847 "src/parser.cpp"
    break;

  case 64: /* func_argu: func_argu COMMA Exp  */
#line 477 "src/parser.y"
    {
        FuncCallParamsNode* node = (FuncCallParamsNode*) (yyvsp[-2].stmttype);
        node->addNext((yyvsp[0].exprtype));
        (yyval.stmttype) = node;
    }
#line 1857 "src/parser.cpp"
    break;

  case 65: /* func_argu: Exp  */
#line 484 "src/parser.y"
    {
        FuncCallParamsNode* node = new FuncCallParamsNode();
        node->addNext((yyvsp[0].exprtype));
        (yyval.stmttype) = node;    
    }
#line 1867 "src/parser.cpp"
    break;

  case 66: /* func_argu: %empty  */
#line 491 "src/parser.y"
    {
        (yyval.stmttype) = nullptr;
    }
#line 1875 "src/parser.cpp"
    break;

  case 67: /* DeclStmt: Type var_idlist SEMICOLON  */
#line 500 "src/parser.y"
    {
        (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 1883 "src/parser.cpp"
    break;

  case 68: /* DeclStmt: CONST Type const_idlist SEMICOLON  */
#line 505 "src/parser.y"
    {
        (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 1891 "src/parser.cpp"
    break;

  case 69: /* const_idlist: const_id_decl  */
#line 513 "src/parser.y"
    {
        DeclStmt* node = new DeclStmt(false);
        node->addNext((DefNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 1901 "src/parser.cpp"
    break;

  case 70: /* const_idlist: const_idlist COMMA const_id_decl  */
#line 520 "src/parser.y"
    {
        DeclStmt* node = (DeclStmt*) (yyvsp[-2].stmttype);
        node->addNext((DefNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 1911 "src/parser.cpp"
    break;

  case 71: /* const_id_decl: ID ASSIGN constExp  */
#line 530 "src/parser.y"
    {
        Type* type;
        if(curType->isInt()){
            type = TypeSystem::constIntType;
        }
        else{
            type = TypeSystem::constFloatType;
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), (Node*)(yyvsp[0].exprtype), true, false);//类型向上转换        
    }
#line 1929 "src/parser.cpp"
    break;

  case 72: /* const_id_decl: ID constArray ASSIGN conArrayValue  */
#line 545 "src/parser.y"
    {
        Type* type;
        if(curType->isInt())
        {
            type = new ConstArrIntType();
        }
        else
        {
            type = new ConstArrFloatType();
        }   
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-3].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-3].strtype), se);
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)(yyvsp[-2].stmttype));
        (yyval.stmttype) = new DefNode(curId, (Node*)(yyvsp[0].stmttype), true, true);   
    }
#line 1951 "src/parser.cpp"
    break;

  case 73: /* conArrayValue: constExp  */
#line 567 "src/parser.y"
    {
        DeclValNode* node = new DeclValNode(true);
        node->setLeafNode((ExprNode*)(yyvsp[0].exprtype));
        (yyval.stmttype) = node;        
    }
#line 1961 "src/parser.cpp"
    break;

  case 74: /* conArrayValue: LBRACE conValueList RBRACE  */
#line 574 "src/parser.y"
    {
         (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 1969 "src/parser.cpp"
    break;

  case 75: /* conArrayValue: LBRACE RBRACE  */
#line 579 "src/parser.y"
    {
        (yyval.stmttype) = new DeclValNode(true);
    }
#line 1977 "src/parser.cpp"
    break;

  case 76: /* conValueList: conValueList COMMA conArrayValue  */
#line 587 "src/parser.y"
    {
        DeclValNode* node = (DeclValNode*)(yyvsp[-2].stmttype);
        node->addNext((DeclValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 1987 "src/parser.cpp"
    break;

  case 77: /* conValueList: conArrayValue  */
#line 594 "src/parser.y"
    {
        DeclValNode* node = new DeclValNode(true);
        node->addNext((DeclValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;
    }
#line 1997 "src/parser.cpp"
    break;

  case 78: /* var_idlist: var_id_decl  */
#line 605 "src/parser.y"
    {
            DeclStmt* node = new DeclStmt(false);
            node->addNext((DefNode*)(yyvsp[0].stmttype));
            (yyval.stmttype) = node;
    }
#line 2007 "src/parser.cpp"
    break;

  case 79: /* var_idlist: var_idlist COMMA var_id_decl  */
#line 612 "src/parser.y"
    {
            DeclStmt* node = (DeclStmt*) (yyvsp[-2].stmttype);
            node->addNext((DefNode*)(yyvsp[0].stmttype));
            (yyval.stmttype) = node;
    }
#line 2017 "src/parser.cpp"
    break;

  case 80: /* var_id_decl: ID  */
#line 623 "src/parser.y"
    {
        // 首先将ID插入符号表中
        Type* type;
        if(curType->isInt()){
            type = TypeSystem::intType;
        }
        else{
            type = TypeSystem::floatType;
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), nullptr, false, false);
    }
#line 2036 "src/parser.cpp"
    break;

  case 81: /* var_id_decl: ID ASSIGN varExp  */
#line 639 "src/parser.y"
    {
        // 首先将ID插入符号表中
        Type* type;
        if(curType->isInt()){
            type = TypeSystem::intType;
        }
        else{
            type = TypeSystem::floatType;
        }
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-2].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DefNode(new Id(se), (Node*)(yyvsp[0].exprtype), false, false);
    }
#line 2055 "src/parser.cpp"
    break;

  case 82: /* var_id_decl: ID varArray  */
#line 655 "src/parser.y"
    {
        Type* type;
        if(curType->isInt()){
            type = new ArrIntType();
        }
        else{
            type = new ArrFloatType();
        }   
        SymbolEntry* se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-1].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-1].strtype), se);
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = new DefNode(curId, nullptr, false, true);    
    }
#line 2075 "src/parser.cpp"
    break;

  case 83: /* var_id_decl: ID varArray ASSIGN varArrayValue  */
#line 672 "src/parser.y"
    {
        Type* type;
        if(curType->isInt())
        {
            type = new ArrIntType();
        }
        else
        {
            type = new ArrFloatType();
        }   
        SymbolEntry *se;
        se = new IdentifierSymbolEntry(type, (yyvsp[-3].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-3].strtype), se);
        Id* curId = new Id(se);
        curId -> AddDimension((ExprStmtNode*)(yyvsp[-2].stmttype));
        (yyval.stmttype) = new DefNode(curId, (Node*)(yyvsp[0].stmttype), false, true);    
    }
#line 2097 "src/parser.cpp"
    break;

  case 84: /* varArrayValue: varExp  */
#line 694 "src/parser.y"
    {
        DeclValNode* node = new DeclValNode(false);
        node->setLeafNode((ExprNode*)(yyvsp[0].exprtype));
        (yyval.stmttype) = node;        
    }
#line 2107 "src/parser.cpp"
    break;

  case 85: /* varArrayValue: LBRACE varValueList RBRACE  */
#line 701 "src/parser.y"
    {
         (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 2115 "src/parser.cpp"
    break;

  case 86: /* varArrayValue: LBRACE RBRACE  */
#line 706 "src/parser.y"
    {
        (yyval.stmttype) = new DeclValNode(false);
    }
#line 2123 "src/parser.cpp"
    break;

  case 87: /* varValueList: varValueList COMMA varArrayValue  */
#line 714 "src/parser.y"
    {
        DeclValNode* node = (DeclValNode*)(yyvsp[-2].stmttype);
        node->addNext((DeclValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;        
    }
#line 2133 "src/parser.cpp"
    break;

  case 88: /* varValueList: varArrayValue  */
#line 721 "src/parser.y"
    {
        DeclValNode* node = new DeclValNode(false);
        node->addNext((DeclValNode*)(yyvsp[0].stmttype));
        (yyval.stmttype) = node;
    }
#line 2143 "src/parser.cpp"
    break;

  case 89: /* varExp: add_minus  */
#line 730 "src/parser.y"
             {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2151 "src/parser.cpp"
    break;

  case 90: /* constExp: add_minus  */
#line 737 "src/parser.y"
             {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2159 "src/parser.cpp"
    break;

  case 91: /* varArray: Array  */
#line 745 "src/parser.y"
    {
        (yyval.stmttype) = (yyvsp[0].stmttype);
    }
#line 2167 "src/parser.cpp"
    break;

  case 92: /* constArray: Array  */
#line 753 "src/parser.y"
    {
        (yyval.stmttype) = (yyvsp[0].stmttype);
    }
#line 2175 "src/parser.cpp"
    break;

  case 93: /* $@2: %empty  */
#line 761 "src/parser.y"
    {
        Type *funcType;
        funcType = new FunctionType((yyvsp[-1].type),{});
        SymbolEntry *se = new IdentifierSymbolEntry(funcType, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        identifiers = new SymbolTable(identifiers);
    }
#line 2187 "src/parser.cpp"
    break;

  case 94: /* $@3: %empty  */
#line 770 "src/parser.y"
    {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-3].strtype));
        assert(se != nullptr);
        if((yyvsp[0].stmttype)!=nullptr)
        {
            ((FunctionType*)(se->getType()))->setparamsType(((FuncDefParamsNode*)(yyvsp[0].stmttype))->getParamsType());
        }
    }
#line 2201 "src/parser.cpp"
    break;

  case 95: /* FuncDef: Type ID $@2 LPAREN FuncParams $@3 RPAREN BlockStmt  */
#line 781 "src/parser.y"
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
#line 2216 "src/parser.cpp"
    break;

  case 96: /* FuncParams: FuncParams COMMA FuncParam  */
#line 794 "src/parser.y"
                                   {
            FuncDefParamsNode* node = (FuncDefParamsNode*)(yyvsp[-2].stmttype);
            node->addNext(((DefNode*)(yyvsp[0].stmttype))->getId());
            (yyval.stmttype) = node;
        }
#line 2226 "src/parser.cpp"
    break;

  case 97: /* FuncParams: FuncParam  */
#line 799 "src/parser.y"
                  {
            FuncDefParamsNode* node = new FuncDefParamsNode();
            node->addNext(((DefNode*)(yyvsp[0].stmttype))->getId());
            (yyval.stmttype) = node;
        }
#line 2236 "src/parser.cpp"
    break;

  case 98: /* FuncParams: %empty  */
#line 804 "src/parser.y"
               {
            (yyval.stmttype) = nullptr;
        }
#line 2244 "src/parser.cpp"
    break;

  case 99: /* FuncParam: Type ID  */
#line 811 "src/parser.y"
                {
            SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
            identifiers->install((yyvsp[0].strtype), se);
            (yyval.stmttype) = new DefNode(new Id(se), nullptr, false, false);
        }
#line 2254 "src/parser.cpp"
    break;

  case 100: /* FuncParam: Type ID LSQUAREBRACKET RSQUAREBRACKET constArray  */
#line 817 "src/parser.y"
                                                        {
            Type* arrayType; 
            if((yyvsp[-4].type)==TypeSystem::intType){
                arrayType = new ArrIntType();
                ((ArrIntType*)arrayType)->addDim(-1);
            }
            else if((yyvsp[-4].type)==TypeSystem::floatType){
                arrayType = new ArrFloatType();
                ((ArrFloatType*)arrayType)->addDim(-1);
            }
            //最高维未指定，记为默认值-1
            SymbolEntry *se = new IdentifierSymbolEntry(arrayType, (yyvsp[-3].strtype), identifiers->getLevel());
            identifiers->install((yyvsp[-3].strtype), se);
            Id* id = new Id(se);
            id->AddDimension((ExprStmtNode*)(yyvsp[0].stmttype));
            (yyval.stmttype) = new DefNode(id, nullptr, false, true);
        }
#line 2276 "src/parser.cpp"
    break;

  case 101: /* FuncParam: Type ID LSQUAREBRACKET RSQUAREBRACKET  */
#line 834 "src/parser.y"
                                             {
            Type* arrayType; 
            if((yyvsp[-3].type)==TypeSystem::intType){
                arrayType = new ArrIntType();
                ((ArrIntType*)arrayType)->addDim(-1);
            }
            else if((yyvsp[-3].type)==TypeSystem::floatType){
                arrayType = new ArrFloatType();
                ((ArrFloatType*)arrayType)->addDim(-1);
            }
            //最高维未指定，记为默认值-1
            SymbolEntry *se = new IdentifierSymbolEntry(arrayType, (yyvsp[-2].strtype), identifiers->getLevel());
            identifiers->install((yyvsp[-2].strtype), se);
            Id* id = new Id(se);
            (yyval.stmttype) = new DefNode(id, nullptr, false, true);
        }
#line 2297 "src/parser.cpp"
    break;

  case 102: /* expr: logical_or  */
#line 854 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2303 "src/parser.cpp"
    break;

  case 103: /* Type: INT  */
#line 858 "src/parser.y"
          {
        (yyval.type) = TypeSystem::intType;
        curType = TypeSystem::intType;
    }
#line 2312 "src/parser.cpp"
    break;

  case 104: /* Type: VOID  */
#line 862 "src/parser.y"
           {
        (yyval.type) = TypeSystem::voidType;
        curType = TypeSystem::voidType;
    }
#line 2321 "src/parser.cpp"
    break;

  case 105: /* Type: FLOAT  */
#line 866 "src/parser.y"
           {
        (yyval.type) = TypeSystem::floatType;
        curType = TypeSystem::floatType;        
    }
#line 2330 "src/parser.cpp"
    break;


#line 2334 "src/parser.cpp"

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

#line 871 "src/parser.y"


int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
