.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 11 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
INC CX 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RBX] 
MOVSX DX, BL 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
LEA SI, qword ptr [RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RCX] 
CMP ECX, 4 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDX 
JNZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, 14 # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
MOVSX ECX, AL 
MOV RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
ADC ESI, -83 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RCX] 
CMOVNBE AX, DX 
SUB BL, BL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
DEC RCX 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
