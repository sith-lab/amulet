.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 69 # instrumentation
CMOVNZ EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], EAX 
TEST AL, -15 
INC AL 
SETNO AL 
CMP AX, -1195 
CMP AL, 66 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RSI 
SETNZ AL 
CMOVNS DX, SI 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
SUB AX, 26525 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
ADD DIL, 88 # instrumentation
CMOVBE DI, CX 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 81 
OR SIL, -110 
CMP RAX, -418426237 
ADD AL, -37 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR RAX, 1950785560 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RSI 
OR EDX, -73 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
OR EDX, 1 # instrumentation
NEG SIL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  # instrumentation
MUL EDI 
NOT ESI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DIL 
SBB DX, -51 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
MOV DIL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RDX 
IMUL ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
