.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 52 # instrumentation
ADC AX, 8379 
CMOVS CX, SI 
ADC AL, 37 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -21 
SUB DX, 43 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
DEC RSI 
MUL ECX 
ADC BL, -112 
CMOVNLE RBX, RAX 
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
CMP ECX, -115 
JMP .bb_main.2 
.bb_main.2:
ADD EAX, 141230773 
SBB AL, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
ADC ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 33 
JMP .bb_main.3 
.bb_main.3:
DEC DX 
AND RDX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDX] 
SUB AX, -18839 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], SI 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
DEC RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RCX] 
CMOVB RDI, RSI 
MUL DX 
MOV DX, -17793 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
