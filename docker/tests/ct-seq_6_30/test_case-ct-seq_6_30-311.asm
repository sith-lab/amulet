.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD DIL, -85 # instrumentation
CMOVS RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 99 # instrumentation
MOVZX EDX, AX 
CMOVB EDI, EAX 
ADD EAX, EBX 
CMOVNS SI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
ADD ESI, 16 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
CMP SI, 108 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 117 # instrumentation
ADC AX, -25249 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -18 # instrumentation
SBB RDX, -57 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI], -22 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -2 # instrumentation
MOVSX CX, BL 
CMOVZ ECX, EDX 
CBW  
ADC RDX, -62 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 38 # instrumentation
CMOVS RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RDI 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
CMOVB ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -108 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
