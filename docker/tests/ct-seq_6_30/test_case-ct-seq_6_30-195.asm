.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RCX, RDX 
IMUL DL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
MOVSX EAX, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
CMOVLE DX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 106 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RAX] 
MOV DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX], 88 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
CMP BX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 8 
JNBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
CMOVNLE RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 116 # instrumentation
CDQ  
CMOVB BX, CX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
ADD RAX, 1099900098 
CMOVS RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
