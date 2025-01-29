.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, DX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
CMOVLE AX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 20 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 11 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
LOOPNE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX RAX, DI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 9 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB AX, -31303 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -36 
MOVZX EAX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
DEC AX 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
CMP SIL, 83 
CMP EBX, 4 
CMOVNLE RBX, RSI 
CMOVP EDI, EBX 
CMOVLE CX, AX 
CMOVB CX, SI 
ADC DIL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
