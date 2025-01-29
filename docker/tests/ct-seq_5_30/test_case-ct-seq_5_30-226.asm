.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -20 # instrumentation
CMOVBE EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
ADC BX, 110 
MOVZX RDX, DL 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -84 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
ADC DIL, DIL 
ADC BL, SIL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], AX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RBX, 55 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
INC RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -9 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, -125 # instrumentation
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 93 # instrumentation
CMOVB RDX, RBX 
ADC EDX, ESI 
ADD BL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 105 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 89 
CMOVNZ BX, DI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDI] 
SUB EAX, -934030239 
CMOVS ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 749171041 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
