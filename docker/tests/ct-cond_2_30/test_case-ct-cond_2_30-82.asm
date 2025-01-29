.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
MOV DIL, AL 
ADC RAX, 1367277335 
AND RCX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RCX] 
CMOVNBE RDI, RDI 
OR DI, 0b1000000000000000 # instrumentation
BSR BX, DI 
AND RAX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 109 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 73 
CMOVNS ECX, ECX 
SUB BL, 106 
SBB RAX, 410397577 
CMOVNLE RDI, RDX 
CMOVNP SI, DI 
MUL EBX 
ADD SIL, 0 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP RDI 
CLC  
ADC AL, 58 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
CMOVP EDX, ECX 
ADD RCX, -15 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
SBB EAX, 1175523633 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
SBB EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
