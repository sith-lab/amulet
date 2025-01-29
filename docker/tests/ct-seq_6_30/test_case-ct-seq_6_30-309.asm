.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
ADD DI, CX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RAX] 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
ADD SIL, 62 # instrumentation
CMOVL EDX, EDX 
IMUL RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDI] 
LEA SI, qword ptr [RDI + RBX] 
CMOVNS EBX, EBX 
SUB DL, -42 
JMP .bb_main.2 
.bb_main.2:
JMP .bb_main.3 
.bb_main.3:
SUB RSI, -13 
SBB EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RBX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
LEA CX, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -79 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -74 # instrumentation
CMOVB RBX, RAX 
ADC ESI, EAX 
CMOVNO RCX, RDX 
CMP DI, -14 
JMP .bb_main.5 
.bb_main.5:
XCHG AL, AL 
XCHG SI, AX 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
