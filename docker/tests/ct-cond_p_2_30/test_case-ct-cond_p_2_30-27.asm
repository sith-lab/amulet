.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 126 # instrumentation
SBB RDX, -74 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
CMOVP BX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -7 
CMOVNP ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
SUB SI, DX 
CMOVNLE RAX, RDI 
LEA SI, qword ptr [RAX + RSI] 
CMOVS ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
BSWAP ESI 
NEG DX 
SBB RAX, 1484800049 
NEG RCX 
SUB EDX, 69 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1184588790 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
CMP RCX, RSI 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RSI] 
ADC DIL, -54 
MOVSX SI, DL 
CMP AL, AL 
AND RDX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDX] 
CMOVNB RDI, RBX 
CMOVP ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
