.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -84 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
ADC DX, CX 
CMOVNS BX, BX 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -24392969 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -36 # instrumentation
CMOVNB EBX, EDI 
MOVSX RDI, DX 
XOR BL, DL 
MOVSX EDI, CL 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 35 # instrumentation
CMOVNS RBX, RDX 
IMUL RCX, RBX, 109 
AND EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RSI] 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], BL 
SBB AX, -4291 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1382944273 
MOVZX ECX, DIL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
JNZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, 51 # instrumentation
SBB RAX, -1184439888 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -78 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], DIL 
XOR AL, BL 
XCHG BX, AX 
IMUL CX 
ADD SIL, -98 # instrumentation
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
CMP DX, DI 
STC  
AND DIL, 74 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], AX 
OR DX, BX 
INC RDI 
ADC AX, 59 
ADD AX, -59 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
