.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RCX, -66 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVZX DI, DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX] 
ADD SIL, -5 # instrumentation
CMOVL EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
XCHG RCX, RAX 
LOOPNE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, 80 # instrumentation
CMOVNBE RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DIL 
CLC  
CMOVNO BX, DX 
LAHF  
JMP .bb_main.3 
.bb_main.3:
INC BL 
ADD RAX, -484879928 
STC  
CMOVNO RBX, RDI 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
ADD EDI, 122 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 28 
SUB RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
CMOVNLE RAX, RCX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 58 # instrumentation
ADC SI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 2481 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
CMOVL RDX, RAX 
MOV SIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
