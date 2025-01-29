.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -106 
SUB DIL, -89 
IMUL ECX, ESI, 59 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], -63 
ADD DIL, 43 # instrumentation
MOV DX, 12508 
JNLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
MOVZX RCX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
ADD SIL, 105 # instrumentation
CMOVLE EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
SETNLE DL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ESI 
CMOVLE ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 13 
SETNZ BL 
CMPXCHG BL, AL 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI], -63 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RDX] 
XADD CX, CX 
JS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -67 # instrumentation
CMOVLE DX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DI 
XOR EDI, EDX 
MOV RBX, RCX 
AND AX, -14820 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
ADD SIL, -117 # instrumentation
CMOVNL EDI, ECX 
SETP SIL 
CMOVNB ECX, EAX 
SUB RAX, -42349095 
MOVZX RDX, AL 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLD  # instrumentation
XOR RDI, RDI 
CMOVNB RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RAX] 
CMOVS EAX, EDI 
IMUL RSI, RDI, -16 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
MOV RCX, -4182508255721917347 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
