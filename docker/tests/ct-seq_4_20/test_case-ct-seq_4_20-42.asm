.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
SBB RAX, 339546675 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 68 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 115 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -74 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -10 
JMP .bb_main.1 
.bb_main.1:
MOVZX ESI, CX 
SUB AX, -14868 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
CMOVBE EDX, EBX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -32 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RSI] 
MOV BL, 10 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 13 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
