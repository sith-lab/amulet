.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -69 # instrumentation
ADC DIL, -118 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDX] 
NOT RDI 
XOR SIL, -84 
NOT RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
SUB EAX, -1870367958 
IMUL RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RAX] 
CLD  
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
CMP SI, 73 
OR DL, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
NOP  
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
SUB RBX, RBX 
SBB CL, DIL 
CMOVO EAX, EBX 
SUB AX, -14470 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
CMP DIL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -88 # instrumentation
CMOVB EAX, EDI 
CMOVBE EBX, EAX 
XOR AX, -22 
SETO SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
AND RSI, -127 
SBB EAX, 1523978151 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], -30 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 91 
SBB DIL, AL 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
XOR EDX, 68 
XOR RSI, -76 
CMP ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
ADC AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
