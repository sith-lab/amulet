.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 55 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RSI 
CMOVB RSI, RDX 
CMOVP RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
CMOVB RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 23 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
CMP DIL, -96 
CMP RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -89 
MOV DIL, BL 
AND RDX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDX] 
SBB AX, 4221 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RCX] 
CMOVL SI, AX 
IMUL SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
