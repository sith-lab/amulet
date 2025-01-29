.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RCX, 127 
ADC ECX, EAX 
SUB DIL, 101 
ADC BX, -19 
MOVZX RBX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX], 66 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
CMOVNP EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RCX] 
ADC RAX, -1478108597 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX], 11 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -67 
NEG CX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 77 
SBB EAX, 1044152161 
MOV DX, DI 
CMOVNLE RSI, RCX 
MOVZX EDI, CL 
IMUL DL 
SBB EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
