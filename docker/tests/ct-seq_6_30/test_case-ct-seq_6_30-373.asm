.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, 70 
AND RDI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
CMOVB ECX, EBX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 88 # instrumentation
SBB EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
XCHG DIL, SIL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB RAX, 1542812335 
CMOVL EDX, ESI 
MOVSX EDI, CL 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
CMOVO DX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RBX] 
JNP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
SBB RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -95 
AND RBX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
MOV DIL, SIL 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 24 # instrumentation
CMOVNZ RDI, RAX 
INC BL 
CMOVNS RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 97 
STC  
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
