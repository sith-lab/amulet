.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 105 # instrumentation
SBB DL, -55 
LEA RCX, qword ptr [RCX + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 51 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RSI] 
CMOVS ESI, EDX 
MOVSX DI, BL 
CMOVO EBX, EAX 
CMOVL RBX, RBX 
CMOVNZ EDI, ECX 
CMP BX, DI 
MOVZX EBX, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -112 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 57 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX], 101 
ADC ESI, -67 
SUB SIL, 74 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
XCHG AX, AX 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDX 
MOV BX, -3830 
ADC AL, -24 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 74 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 55 
SBB DX, DI 
MUL SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
