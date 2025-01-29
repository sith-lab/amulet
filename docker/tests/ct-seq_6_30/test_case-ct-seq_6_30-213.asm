.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
MUL BL 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CMP AX, -26274 
NEG EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 88 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
MOV BL, 30 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 118 # instrumentation
CMOVNP EAX, ECX 
MOV RCX, -1674339835190531262 
ADD AX, 12598 
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
MOVSX EDI, AX 
JMP .bb_main.4 
.bb_main.4:
MUL CL 
CMOVNO EDX, ESI 
MOV BL, 65 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 22 
MOVZX CX, BL 
JMP .bb_main.5 
.bb_main.5:
MOV SI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 77 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -119 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -28 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -4 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
