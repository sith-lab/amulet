.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, 19468 
ADC SI, CX 
AND DI, BX 
LEA ECX, qword ptr [RDX + RAX + 18096] 
AND RSI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ESI 
NOT ESI 
TEST CX, BX 
XOR EDX, EDI 
CMOVP EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
CWD  
AND RDX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR CX, -71 
XOR EAX, EBX 
SUB DX, -100 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], -32 
NEG EDI 
SETNZ DL 
INC SIL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
INC ESI 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
INC EDI 
CMP BL, -75 
NOT DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
TEST RDI, RAX 
SUB RDX, RDI 
CWD  
ADC AX, -23351 
CMOVNL DI, AX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 73 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDX] 
CMOVB RCX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
