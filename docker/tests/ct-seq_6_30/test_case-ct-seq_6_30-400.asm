.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, -929277826 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -29 
DEC RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], 5 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], CX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -70 # instrumentation
MOV BL, DL 
CMOVS SI, BX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
CMP EAX, 40 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EDX 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -77 # instrumentation
CMOVNP EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDX] 
SBB EAX, 4421094 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
ADD AL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
CMOVNO DX, BX 
CMP EAX, 15648359 
SUB EAX, 159811438 
ADC CL, 52 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RBX] 
MOVSX EDI, SI 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
CMOVZ ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -83 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
