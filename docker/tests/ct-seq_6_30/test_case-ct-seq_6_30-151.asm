.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, 93 
CMOVS EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], SI 
CMP EDI, -45 
SUB AL, 59 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CMP AX, 10910 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
MOVZX EDI, DL 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 96 # instrumentation
LAHF  
DEC BX 
NEG CX 
CMP AL, -84 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RCX] 
CMP EAX, 1505258053 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
ADC BL, -71 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
BSWAP RCX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
SBB CL, BL 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -1 # instrumentation
SBB CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -104 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
