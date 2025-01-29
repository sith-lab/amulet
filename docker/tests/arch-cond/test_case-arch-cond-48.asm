.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG AX 
CMOVLE DI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
SUB AX, -21 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
IMUL EBX 
ADD SIL, -30 # instrumentation
CMOVO EDI, ECX 
CMOVS CX, SI 
SETL CL 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 127 
MUL SI 
AND RDX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDX] 
SUB AL, 41 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 114 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
NOT DIL 
SETBE AL 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 66 # instrumentation
SETNO AL 
CMOVB ESI, EDX 
XOR RAX, -107 
OR RDX, 42 
CMP SIL, DIL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDX 
ADD DIL, CL 
LEA ESI, qword ptr [RSI + RCX + 28490] 
SBB BL, 43 
CLC  
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -17 # instrumentation
CMOVNL BX, BX 
CMOVNS AX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
SETNP CL 
TEST BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], CX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], CL 
CMOVO EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
