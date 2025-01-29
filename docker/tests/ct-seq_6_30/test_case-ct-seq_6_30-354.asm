.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1779272704 
CMP DL, DL 
ADC AL, -44 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
SUB BL, 104 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -80 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
NEG EAX 
CMOVNS CX, CX 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
SUB AX, SI 
CMOVLE ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
LEA ECX, qword ptr [RDI + RAX + 39618] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
ADC RSI, -16 
DEC AL 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -44 
ADD AL, -58 
CMOVNZ ESI, EAX 
CMP EAX, 30 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -62 
CMP AX, -8020 
SBB DL, 9 
MUL EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
