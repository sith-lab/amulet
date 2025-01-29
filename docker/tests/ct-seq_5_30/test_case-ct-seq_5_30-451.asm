.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 58 # instrumentation
ADC AL, -85 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -41 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -92 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -8036 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RSI] 
MOVZX ECX, AX 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
CMOVNLE RSI, RAX 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 83 # instrumentation
CMOVLE RDI, RSI 
CMOVS DI, DX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RCX] 
IMUL DI, CX, -7 
DEC DIL 
MOVSX EBX, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL RDI 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDI 
SUB ECX, 81 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 84 # instrumentation
CMOVNZ EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
CMP RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
