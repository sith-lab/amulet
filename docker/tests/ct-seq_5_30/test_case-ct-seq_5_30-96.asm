.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 226448188 
CMP DL, -16 
ADD EAX, 1622343400 
DEC ESI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
STD  
INC BX 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX], -3 
ADD SIL, 79 # instrumentation
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
MOV DX, CX 
SUB RAX, 319697859 
MOV RDX, RDI 
IMUL RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RCX] 
MUL DIL 
AND RDX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDX] 
CMP SIL, -43 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MUL ESI 
MOVZX ESI, DL 
IMUL SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
CMOVNB EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EDI 
CMOVNLE BX, SI 
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
MUL SIL 
ADD DIL, -122 # instrumentation
CMOVS RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
