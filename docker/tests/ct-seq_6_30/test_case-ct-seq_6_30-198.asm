.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX], 34 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], AX 
CMOVNLE RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
ADD EDX, 36 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], BX 
XCHG CX, AX 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
ADD SIL, 93 # instrumentation
SBB SIL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CMP AL, -124 
MOV CL, 71 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MUL DL 
MUL RDX 
MOVZX RDI, SIL 
MOV RCX, RBX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 48 # instrumentation
ADC AX, 11206 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -24 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 48 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
DEC DIL 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
