.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDI] 
CMOVLE ECX, ESI 
CMP EAX, -2000432785 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
ADD DIL, -71 # instrumentation
CMOVL EDX, EBX 
MUL DI 
ADD ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
MOVSX ESI, SI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
BSWAP EDI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -50 # instrumentation
ADC AX, SI 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD DIL, 122 # instrumentation
LAHF  
DEC RCX 
INC RBX 
ADD RAX, 90 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
INC BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 38 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
