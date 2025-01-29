.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -30 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
DEC DI 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -120 # instrumentation
MOV AL, -59 
CMOVP AX, BX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX], -15 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -65 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 99 # instrumentation
CMOVNS RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 99 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 2 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 120 # instrumentation
SBB RDX, -117 
AND RSI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RSI] 
MOVZX RCX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
