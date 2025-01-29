.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RSI 
CMOVNB RCX, RAX 
CMOVP ECX, EBX 
CLC  
IMUL RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -22 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
AND EBX, -76 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -4 # instrumentation
SBB EDI, -102 
MOVSX DI, BL 
SETNZ DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -15 
JMP .bb_main.2 
.bb_main.2:
OR ECX, 72 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ESI 
ADC EAX, -810130244 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
ADC CX, AX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], CX 
SUB AL, 13 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
SETS CL 
NEG EAX 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], EAX 
CMPXCHG CX, CX 
MOVZX BX, BL 
XCHG EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RCX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -45 # instrumentation
SETNLE SIL 
MOVSX RSI, AX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -118 
IMUL AX, DI, 102 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -2070904588 
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], 28 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
MOVZX ECX, DL 
IMUL RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
