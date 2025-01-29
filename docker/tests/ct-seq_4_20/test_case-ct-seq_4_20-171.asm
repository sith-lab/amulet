.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -76 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
CMOVS SI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -121 # instrumentation
CMOVNS RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -16 
CMOVO BX, DI 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 121 
CMOVB BX, BX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDX] 
IMUL DI, DX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
ADC EDX, 10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
