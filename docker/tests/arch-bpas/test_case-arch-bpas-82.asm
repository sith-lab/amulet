.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DX, 50 
DEC DI 
SETL DL 
MUL DL 
DEC RBX 
MOVZX RBX, BL 
CMOVNZ ESI, EDI 
XADD RSI, RBX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ESI 
CMOVLE RSI, RBX 
XOR RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], -1792219931 
CMP DIL, 61 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
TEST DI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RSI] 
SETP AL 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], 87 
XADD DIL, SIL 
SETNO AL 
ADD EAX, -119 
CMOVNZ RCX, RBX 
ADC SIL, AL 
OR EAX, -453033089 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RBX 
XOR EDI, ESI 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -29 # instrumentation
SETNZ DL 
CMOVNL ESI, EDI 
STD  
AND AX, 3380 
XCHG EBX, EAX 
XOR RDX, -7 
CMOVNLE EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
