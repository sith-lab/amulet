.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -2056170933 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
ADD SIL, -22 # instrumentation
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDX] 
ADC EAX, 1007822184 
MOVSX BX, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
CMP EBX, 117 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 41 # instrumentation
CMOVNL RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 3 
CBW  
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
MOV CX, BX 
CMOVNP RSI, RBX 
ADD ECX, 34 
AND RAX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD EDI, 59 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DX 
SUB BL, DL 
CMP EBX, EDX 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
MOVZX RDI, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
