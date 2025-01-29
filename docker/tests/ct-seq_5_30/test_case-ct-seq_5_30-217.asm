.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
IMUL AX, DX 
ADD SI, AX 
ADC EBX, EDI 
DEC ECX 
SUB EDI, 121 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB EAX, 1459100458 
JMP .bb_main.2 
.bb_main.2:
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
MOVSX ESI, DL 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RCX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
CMOVNB EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
SBB SI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
IMUL EBX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
CMOVNB RAX, RDX 
CMOVNBE EBX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
