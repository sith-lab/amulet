.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 0 # instrumentation
CMOVB ECX, EDI 
CMP CL, 87 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
SUB EAX, 494164396 
SUB EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 48 
SBB SIL, 26 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EBX 
JP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDX 
ADC EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -68 
ADD AX, DX 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
SBB AX, -17357 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDX 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 10 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDX] 
NEG EDI 
CMP ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
