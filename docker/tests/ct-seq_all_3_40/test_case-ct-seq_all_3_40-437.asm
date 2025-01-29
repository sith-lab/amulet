.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 17 # instrumentation
ADC DX, -70 
AND ESI, EDI 
NOT DX 
OR RDX, -32 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ESI 
CMP RDX, RCX 
TEST EAX, -288401332 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 65 
CMOVNS RDI, RSI 
SETNL BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RCX 
XADD BL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RSI 
CMOVB RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
JMP .bb_main.1 
.bb_main.1:
LEA ECX, qword ptr [RSI + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RCX] 
SETNP CL 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
SUB ECX, EBX 
CMOVNS AX, CX 
SUB DL, 43 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RSI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL BL 
ADD DIL, 127 # instrumentation
CMOVNZ ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
INC RBX 
SETBE AL 
XOR CL, -49 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
ADD SIL, -72 # instrumentation
CMOVL EDX, EDI 
XOR DL, AL 
SUB DX, -25 
MOVSX AX, SIL 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND SIL, -74 
SETS DL 
ADD CL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
OR EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
