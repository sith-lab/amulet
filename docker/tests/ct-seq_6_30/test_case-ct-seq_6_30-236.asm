.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 94 
CMOVNBE AX, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
CMOVNS RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -112 
CMOVZ RSI, RCX 
CMOVB BX, CX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
SBB RBX, RSI 
SUB RDX, RDI 
SUB AL, 71 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
CMP DI, -6 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 78 # instrumentation
CMOVL RDX, RSI 
LEA AX, qword ptr [RSI + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DX 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 61 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -108 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
ADC DX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
