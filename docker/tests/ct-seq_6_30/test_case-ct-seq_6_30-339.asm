.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDI, -1849619071 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -55 
SUB ESI, EBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
CMP RSI, -110 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDX] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLC  
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
CMP DIL, 100 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD AX, -8748 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RCX] 
CMP AX, BX 
MOVZX EAX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
BSWAP RDI 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
XCHG AX, DI 
SUB EDI, -23 
ADC AX, -30176 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
