/* 
 * CS:APP Data Lab 
 * 
 * <name: Long He, userid: longh>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* 
 * evenBits - return word with all even-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int evenBits(void) {
  // Exploit << and | to construct 0x55555555.
  int seed1 = 85;   
  int seed2 = seed1 | (seed1 << 16);
  return seed2 | (seed2 << 8);
}
/* 
 * isEqual - return 1 if x == y, and 0 otherwise 
 *   Examples: isEqual(5,5) = 1, isEqual(4,5) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int isEqual(int x, int y) {
  // Exploit ^ and ! to obtain the right number.
  return !(x ^ y);
}
/* 
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 2
 */
int byteSwap(int x, int n, int m) {
  // Use >> to locate the bytes.
  int byteN = n << 3;  
  int byteM = m << 3;

  // Exploit ^ twice on the same bytes to swap them.
  int byteMix = ((x >> byteN) ^ (x >> byteM)) & 255;  
  return ((byteMix << byteM) + (byteMix << byteN)) ^ x;
}
/* 
 * rotateRight - Rotate x to the right by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateRight(0x87654321,4) = 0x18765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateRight(int x, int n) {
  // Use << >> to obtain the left and right parts.
  int distance = ~n + 33;
  int left = x << distance;
  int right1 = x >> n;

  // Exploit & to make a logical shift.
  int right2 = right1 & ~(~0 << distance);
  return left + right2;
}
/* 
 * logicalNeg - implement the ! operator using any of 
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int logicalNeg(int x) {
  // Use >> to get the sum of sign bits of x and -x.
  int signSum = x | (~x + 1);

  // If x = 0, sign = 0; else sign = -1.
  int sign = signSum >> 31;
  return sign + 1;
}
/* 
 * TMax - return maximum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void) {
  // 7fffffff is the maximum two's complement integer.
  return ~(1 << 31);
}
/* 
 * sign - return 1 if positive, 0 if zero, and -1 if negative
 *  Examples: sign(130) = 1
 *            sign(-23) = -1
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 2
 */
int sign(int x) {
  // Use !! to get 1 if zero. Exploit >> to obtain the sign number.
  return (!!x) | (x >> 31);
}
/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
  // A, B is the exclusive part of x, y.
  int A = x & ~y;
  
  // C = (~(A + B)) >> 1.
  int C = (x ^ ~y) >> 1;

  // A + C =  A + ((-A - B - 1) >> 1).
  return !((A + C) >> 31);
}
/* 
 * subOK - Determine if can compute x-y without overflow
 *   Example: subOK(0x80000000,0x80000000) = 1,
 *            subOK(0x80000000,0x70000000) = 0, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOK(int x, int y) {
  // If overflow, x * y < 0 and (x - y) * x < 0. 
  int sub = x + ~y + 1;
  int sign1 = sub ^ x;
  int sign2 = x ^ y;
  
  // Use ! and >> to return the right number.
  return !((sign1 & sign2) >> 31);
}
/*
 * satAdd - adds two numbers but when positive overflow occurs, returns
 *          maximum possible value, and when negative overflow occurs,
 *          it returns minimum possible value.
 *   Examples: satAdd(0x40000000,0x40000000) = 0x7fffffff
 *             satAdd(0x80000000,0xffffffff) = 0x80000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 30
 *   Rating: 4
 */
int satAdd(int x, int y) { 
  int sum = x + y;
  
  // If overflow, sign bits of x, y are different from sum's.
  int sign = ((sum ^ x) & (sum ^ y)) >> 31;

  // If not overflow, sign = 0, return sum. 
  return (sign << 31) ^ (sum >> sign);
}
/* howManyBits - return the minimum number of bits required to represent x in
 *             two's complement
 *  Examples: howManyBits(12) = 5
 *            howManyBits(298) = 10
 *            howManyBits(-5) = 4
 *            howManyBits(0)  = 1
 *            howManyBits(-1) = 1
 *            howManyBits(0x80000000) = 32
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 90
 *  Rating: 4
 */
int howManyBits(int x) {
  // Turn all x < 0 to x' > 0. Find the first "1" bit.
  int sign = x >> 31;
  int x0 = x ^ sign;
  
  // Shift right 16 bits.
  int x1 = x0 >> 16;
  int minus1 = ~0;
  int n1 = ((!!x1 << 1) + minus1) << 3;

  
  // Shift right 16 +/- 8 bits.
  int a2 = 16 + n1;
  int x2 = x0 >> a2;
  int n2 = ((!!x2 << 1) + minus1) << 2;
  
  // Shift right 16 +/- 8 +/- 4 bits.
  int a3 = a2 + n2;
  int x3 = x0 >> a3;
  int n3 = ((!!x3 << 1) + minus1) << 1;
  
  // Shift right 16 +/- 8 +/- 4 +/- 2 bits.
  int a4 = a3 + n3;
  int x4 = x0 >> a4;
  int n4 = (!!x4 << 1) + minus1;
  
  // Shift right 16 +/- 8 +/- 4 +/- 2 +/- 1 bits.
  int a5 = a4 + n4;
  int x5 = x0 >> a5;
  int n5 = x5 + ~!x0 + 2; 

  return a5 + n5;
}
/* 
 * float_half - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_half(unsigned uf) {
  //  Deal with this problem in the following cases. 
  unsigned sign = uf & 0x80000000;
  unsigned f = uf ^ sign;

  // denormalized cases
  if (f <= 0x1000000) {
    f >>= 1;
    switch (3 & uf) { // round-to-nearest-even
      case 3: f += 1;
    }
    return f + sign;
  }

  // infinity and NaN cases
  if (f >= 0x7f800000) {
    return uf;
  }

  // normalized cases
  else {
    return uf - 0x800000;
  }
}
/* 
 * float_f2i - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int float_f2i(unsigned uf) {
  /*  Analyze the problem in the following cases. */
  unsigned sign = uf & 0x80000000;
  unsigned exp = (uf >> 23) & 255;
  unsigned e = exp - 127;
  unsigned frac = uf & 0x7FFFFF;
  unsigned res;

  // denormalized cases
  if (exp < 127) {
    return 0;
  }

  // out of range cases (including NaN and infinity)
  if (exp >= 158) {
    return 0x80000000u;
  }
  
  // normalized cases
  if (e < 23) {
    res = frac >> (23 - e);
  }
  else {
    res = frac << (e - 23);
  }

  // M * 2^E
  res += (1 << e);
  
  // Numerical form (-1)^s * M * 2^E.
  if (sign) {
    return -res;
  }
  else {
    return res;
  }
}