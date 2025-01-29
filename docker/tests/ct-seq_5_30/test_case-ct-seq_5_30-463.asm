.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
XCHG ECX, EAX 
MOVZX EDI, CL 
SUB RDI, 84 
AND RDX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -47 
CMOVNS DX, CX 
DEC DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -21 
INC EDI 
ADC DIL, 115 
JNO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
IMUL ESI, EDI 
SUB BX, -20 
CMOVNS RCX, RAX 
STD  
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -15679 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -4 # instrumentation
CMOVNB EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
DEC EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -51 
CMP DL, CL 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RCX] 
CMOVS EBX, EDX 
CMP AL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
