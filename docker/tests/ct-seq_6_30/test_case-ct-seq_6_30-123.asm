.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 42 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 101 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], CX 
MUL CX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
MOV ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDI] 
CMP RAX, -2005324651 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ECX 
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -68 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
IMUL EDX, ESI, 40 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
MUL RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
