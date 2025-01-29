.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 14138 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], 27 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], AL 
SBB DIL, -37 
XCHG RCX, RAX 
MOVZX DX, DL 
SETZ AL 
STC  
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], SI 
CMOVNZ RAX, RBX 
SBB RDI, RBX 
OR AL, CL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], ESI 
ADC SIL, 17 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
SETZ CL 
XOR BX, DX 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RAX] 
IMUL EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -68 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
XOR DI, DX 
ADD AX, 19037 
INC DI 
XOR RBX, RDX 
TEST AL, 126 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND DIL, AL 
OR DL, CL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RCX] 
CMOVNS EBX, EBX 
AND RCX, 46 
TEST RAX, -389141683 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 102 
CMOVNZ RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
