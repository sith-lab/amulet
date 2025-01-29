.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -25 
SUB EAX, 2143274959 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RSI 
ADC SIL, 107 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 62 # instrumentation
CMOVL CX, CX 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
NEG CL 
ADC RAX, -203219402 
CMOVNS RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RSI 
ADC EAX, -1539043526 
CMOVNB DX, BX 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 83 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RBX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RAX] 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -85 # instrumentation
CMOVNB RAX, RAX 
MOVZX BX, BL 
MOVZX SI, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 71 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RAX] 
CMOVNB BX, BX 
XCHG RCX, RAX 
CMOVNL SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
