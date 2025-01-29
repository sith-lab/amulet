.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RSI] 
LOOP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -37 # instrumentation
CMOVNLE EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
CMP AX, -16 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
ADC AL, AL 
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
ADD DIL, 46 # instrumentation
CMOVS ECX, EBX 
JRCXZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -12 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
SUB ESI, EDI 
CMP AX, -23972 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
CMOVNLE BX, SI 
SBB EBX, -107 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
BSWAP EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -35 
IMUL AX, BX, -43 
ADD AX, 29402 
JMP .bb_main.5 
.bb_main.5:
CMP DL, 109 
AND RDI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
ADD DIL, 6 # instrumentation
ADC RAX, -1078455817 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
