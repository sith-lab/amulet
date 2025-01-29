.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
XCHG RDI, RAX 
CMOVNLE EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RSI] 
SUB EBX, -65 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
SUB DX, 21 
LEA RDX, qword ptr [RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
ADD EDI, -119 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDX] 
ADD SIL, -109 # instrumentation
SBB AX, -4928 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RAX] 
MOV DX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -26 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
MOV AL, CL 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -1 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
ADC SI, -14 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], BX 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -13 
LEA EDI, qword ptr [RAX + RAX + 18373] 
AND RBX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RBX] 
MOVSX DX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
