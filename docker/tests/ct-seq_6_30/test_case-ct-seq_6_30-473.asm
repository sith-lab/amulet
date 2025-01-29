.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -62 # instrumentation
CMOVZ RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
IMUL DX, BX, 2 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
NEG AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
IMUL DX 
JMP .bb_main.2 
.bb_main.2:
SUB BL, DIL 
CMP AL, -102 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVZX SI, BL 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
ADC AX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -22 
CMOVNLE SI, DX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 54 # instrumentation
MOV DX, DX 
LEA EDX, qword ptr [RCX] 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RBX] 
CMOVB RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], 127 
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX], -22 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
