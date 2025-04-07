/* Provide Declarations */
#include <stdint.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifdef _MSC_VER
#define __noreturn __declspec(noreturn)
#else
#define __noreturn __attribute__((noreturn))
#endif
#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#if defined(__GNUC__)
#define  __ATTRIBUTELIST__(x) __attribute__(x)
#else
#define  __ATTRIBUTELIST__(x)  
#endif

#ifdef _MSC_VER  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#ifdef _MSC_VER
#define __PREFIXALIGN__(X) __declspec(align(X))
#define __POSTFIXALIGN__(X)
#else
#define __PREFIXALIGN__(X)
#define __POSTFIXALIGN__(X) __attribute__((aligned(X)))
#endif



/* Global Declarations */

/* Types Declarations */
struct l_array_8_uint8_t;
struct l_array_8192_uint8_t;
struct l_array_1024_uint64_t;

/* Function definitions */

/* Types Definitions */
struct l_array_8_uint8_t {
  uint8_t array[8];
};
struct l_array_8192_uint8_t {
  uint8_t array[8192];
};
struct l_array_1024_uint64_t {
  uint64_t array[1024];
};

/* Function Declarations */
__noreturn void rust_begin_unwind(void* llvm_cbe__info) __ATTRIBUTELIST__((nothrow)) __HIDDEN__;
int main(void) __ATTRIBUTELIST__((nothrow));
static struct l_array_8192_uint8_t _ZN5hello7NyanCat3new17h30ee6a53e41098f9E(void) __ATTRIBUTELIST__((nothrow));
struct l_array_8192_uint8_t nyaa(void) __ATTRIBUTELIST__((nothrow));
void* memset(void* _3, uint32_t _4, uint64_t _5);
void* memcpy(void* _6, void* _7, uint64_t _8);


/* LLVM Intrinsic Builtin Function Bodies */


/* Function Bodies */

__noreturn void rust_begin_unwind(void* llvm_cbe__info) {
  __PREFIXALIGN__(8) struct l_array_8_uint8_t llvm_cbe__info_2e_dbg_2e_spill __POSTFIXALIGN__(8);    /* Address-exposed local */

  *((void**)&llvm_cbe__info_2e_dbg_2e_spill) = llvm_cbe__info;
  goto llvm_cbe_bb1;

  do {     /* Syntactic loop 'bb1' to make GCC happy */
llvm_cbe_bb1:
  goto llvm_cbe_bb1;

  } while (1); /* end of syntactic loop 'bb1' */
}


int main(void) {
  __PREFIXALIGN__(8) struct l_array_8192_uint8_t llvm_cbe_nyan_cat __POSTFIXALIGN__(8);    /* Address-exposed local */
  uint64_t llvm_cbe__6;

#line 11 "/Users/may/Documents/GitHub/rustc_codegen_c/experiment/hello.rs"
  llvm_cbe_nyan_cat = nyaa();
#line 12 "/Users/may/Documents/GitHub/rustc_codegen_c/experiment/hello.rs"
  *(uint64_t*)(((&((struct l_array_1024_uint64_t*)&llvm_cbe_nyan_cat)->array[((int64_t)512)]))) = 42;
#line 13 "/Users/may/Documents/GitHub/rustc_codegen_c/experiment/hello.rs"
  llvm_cbe__6 = *(uint64_t*)(((&((struct l_array_1024_uint64_t*)&llvm_cbe_nyan_cat)->array[((int64_t)512)])));
  return (((uint32_t)llvm_cbe__6));
}


static struct l_array_8192_uint8_t _ZN5hello7NyanCat3new17h30ee6a53e41098f9E(void) {
  struct l_array_8192_uint8_t StructReturn;  /* Struct return temporary */
  struct l_array_8192_uint8_t* llvm_cbe__0 = &StructReturn;
  __PREFIXALIGN__(8) struct l_array_8192_uint8_t llvm_cbe__1 __POSTFIXALIGN__(8);    /* Address-exposed local */
  void* _1;
  void* _2;

#line 23 "/Users/may/Documents/GitHub/rustc_codegen_c/experiment/hello.rs"
  _1 = memset((&llvm_cbe__1), 0, 8192);
  _2 = memcpy(llvm_cbe__0, (&llvm_cbe__1), 8192);
  return StructReturn;
}


struct l_array_8192_uint8_t nyaa(void) {
  struct l_array_8192_uint8_t StructReturn;  /* Struct return temporary */
  struct l_array_8192_uint8_t* llvm_cbe__0 = &StructReturn;
#line 29 "/Users/may/Documents/GitHub/rustc_codegen_c/experiment/hello.rs"
  *(llvm_cbe__0) = _ZN5hello7NyanCat3new17h30ee6a53e41098f9E();
  return StructReturn;
}

