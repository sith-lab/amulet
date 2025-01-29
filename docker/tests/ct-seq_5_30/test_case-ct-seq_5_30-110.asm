.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 118 # instrumentation
STC  
CMOVNS EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 86 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RAX 
ADC AX, DI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], SIL 
MOV SIL, -35 
CMOVLE EAX, EDI 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
IMUL AX 
OR EDX, 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDX] 
MUL BX 
MOV CL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
DEC RSI 
ADD CL, BL 
XCHG DX, DX 
LEA RDX, qword ptr [RDI + RDX + 64551] 
JMP .bb_main.4 
.bb_main.4:
CMP RAX, RDX 
CBW  
CMOVNP RDX, RDX 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
SUB RAX, RDI 
CMOVNB RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
