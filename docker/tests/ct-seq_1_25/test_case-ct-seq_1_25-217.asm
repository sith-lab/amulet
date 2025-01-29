.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI], -71 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
DEC DX 
CMOVNL DX, DI 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 45 
AND RCX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -67 
ADC AX, 30181 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
CMOVL RDI, RDI 
MOVSX EBX, SI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
