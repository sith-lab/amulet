.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BX, SI 
SBB RCX, 30 
TEST AL, -62 
CMC  
ADD RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
CMOVBE ESI, EAX 
IMUL RCX 
SETNO BL 
MOV DI, -15206 
OR AL, -65 
CMOVNO RSI, RDI 
NOT ECX 
ADD AL, -30 
TEST AL, AL 
OR EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 125 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], DL 
TEST BX, CX 
AND RDI, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RDX] 
SETNBE BL 
ADD CX, DI 
SETNZ CL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 80 
ADC AX, -6543 
JMP .bb_main.2 
.bb_main.2:
XOR EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RBX 
CBW  
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
SETP DL 
CMP EAX, 1163753420 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], -104 
IMUL DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
