.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB SIL, 69 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
ADC RAX, -1843096530 
MOVSX ESI, DX 
MOVZX DI, BL 
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
INC CL 
CMOVNBE CX, DX 
CMOVBE RAX, RAX 
CMP RSI, RCX 
CMOVNO RDX, RCX 
CMOVL RDI, RSI 
CBW  
AND RSI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
SUB EAX, ESI 
XCHG EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
CMOVNB AX, SI 
SUB RAX, 2073797526 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
CMOVNBE DX, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
INC DL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
