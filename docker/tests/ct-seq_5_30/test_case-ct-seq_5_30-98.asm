.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, RSI 
ADD BX, -6 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -100 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB DIL, 5 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 571866112 
NEG CL 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
IMUL AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDX] 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
DEC CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RAX] 
CMOVO ESI, EAX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RSI] 
CMOVNO CX, BX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -126 
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 116 # instrumentation
ADC ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
CMOVP RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 119 
MOVSX RSI, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
