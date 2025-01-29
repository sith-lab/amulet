.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
SBB AX, 30550 
CMP EAX, 912165698 
NEG RAX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RSI, DX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -97 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
ADC BX, 115 
DEC CL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 40 # instrumentation
CMOVNZ EAX, ESI 
CMP DX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
MOVZX DX, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 113 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
ADD DIL, 66 # instrumentation
CMOVO EDX, EDX 
ADD EBX, EDI 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
CMOVP ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDI 
ADD DL, 60 
ADD AL, 111 
SBB DL, DL 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
CMOVO ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
