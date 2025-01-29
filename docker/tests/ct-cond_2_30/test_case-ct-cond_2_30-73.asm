.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 10 # instrumentation
INC AL 
CMOVNB EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
XCHG BX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
XCHG ESI, EAX 
MUL BL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RSI] 
NEG AL 
CMOVB ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
INC DIL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
CMP ECX, -9 
CBW  
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
CMOVNB ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 53 
SBB RAX, -440292107 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
CMOVNL CX, SI 
MOVSX RBX, CL 
CMOVP RDI, RCX 
ADC AX, 12173 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
