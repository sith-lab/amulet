.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 4197 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
SBB RAX, 1710501999 
MOVSX BX, AL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RSI] 
LEA DX, qword ptr [RSI] 
SBB EDI, 72 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 62 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 101 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -92 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDI] 
CMOVB EBX, EBX 
JMP .bb_main.2 
.bb_main.2:
INC EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
CMP AX, BX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMP ECX, -100 
IMUL CX 
ADD DIL, 92 # instrumentation
MOV BL, CL 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
MOV AX, 14047 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -67 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -75 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
