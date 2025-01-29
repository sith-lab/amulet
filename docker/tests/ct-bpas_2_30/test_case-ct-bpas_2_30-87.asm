.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP BL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
CMOVZ RCX, RSI 
ADD BL, BL 
ADD ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
SUB RBX, -79 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 969131083 
AND RAX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RAX] 
SAHF  
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RCX] 
CMP EAX, 374419802 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDI 
INC SIL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
SBB AL, 66 
ADD DIL, -51 
MOVZX EDI, DL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ESI 
SBB RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDI] 
CMOVP RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
