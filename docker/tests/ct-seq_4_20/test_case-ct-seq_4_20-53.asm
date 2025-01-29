.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -5602 
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DX 
JMP .bb_main.1 
.bb_main.1:
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
CMP RAX, 12 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RSI 
IMUL EAX, ESI, 19 
ADD DIL, -39 # instrumentation
MOVSX EDI, DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
