.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
NEG EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 97 
CMOVNLE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 24 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -66 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -20 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 10 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
