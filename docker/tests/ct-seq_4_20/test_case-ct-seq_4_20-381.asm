.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DL 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -95 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
SUB EAX, -294226935 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
MOVZX EDX, BL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 33 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 12 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RAX] 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RCX] 
DEC RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDI] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], SIL 
CBW  
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
IMUL RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
