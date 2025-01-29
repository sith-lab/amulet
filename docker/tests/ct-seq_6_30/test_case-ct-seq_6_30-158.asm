.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 35 
ADD RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX], 56 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -127 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD SIL, -71 # instrumentation
MOVZX SI, BL 
SBB EDX, -119 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 85 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
LOOP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -25 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -72 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EAX 
DEC DL 
MOV DX, -6517 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 3 # instrumentation
LAHF  
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -41 
CMOVZ EDI, ECX 
IMUL CX 
ADD DIL, -21 # instrumentation
CMOVBE RDI, RDI 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RCX] 
ADD CL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
SBB RAX, -270436703 
XCHG AX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
