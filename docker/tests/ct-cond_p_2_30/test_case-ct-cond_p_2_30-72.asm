.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 75 # instrumentation
CMOVB AX, AX 
SBB ECX, 55 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
MUL DX 
ADD SIL, -107 # instrumentation
CMOVNP DI, DX 
MOVSX BX, DIL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RBX] 
ADD DIL, 111 # instrumentation
ADC EBX, 55 
ADC AL, 1 
NEG BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 7 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
SBB EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], BX 
ADD RCX, RAX 
MOVZX RAX, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
ADC BX, -64 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
ADD EDX, 111 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CMOVP ECX, EDI 
SBB AL, 100 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMOVNBE RAX, RDX 
LEA EDI, qword ptr [RDI + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
MUL EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
