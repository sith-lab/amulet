.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RSI 
AND EBX, -127 
AND EAX, -88 
MOV ECX, ESI 
SETNZ BL 
SETNP AL 
IMUL RBX 
ADD SIL, -35 # instrumentation
CMOVNS RSI, RAX 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX], 15 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
NOT RSI 
MOVSX RBX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -13839 
XCHG RDX, RAX 
SBB CX, 106 
ADC EBX, ECX 
IMUL RSI, RDX, -44 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RAX 
SUB AL, AL 
CMOVNB DI, AX 
SETS CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
TEST AL, BL 
SETNZ AL 
SETZ DIL 
SETNS BL 
OR EAX, 2002461695 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
XOR EAX, -1989061159 
CMOVO EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], -48 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
OR SIL, 127 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
OR CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
