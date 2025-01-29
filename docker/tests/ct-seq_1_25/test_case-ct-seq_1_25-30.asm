.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
SBB CL, DL 
LEA DX, qword ptr [RBX + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -81 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 72 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
CMOVNP AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
MOV AL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], SIL 
LEA RBX, qword ptr [RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 108 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
NEG EDI 
SUB DX, 65 
MOVZX ESI, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
ADC EAX, 60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
