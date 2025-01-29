.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
BSWAP EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RCX] 
SUB RDI, RCX 
JMP .bb_main.1 
.bb_main.1:
CMP BL, SIL 
IMUL AX, DX 
SUB RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -61 
JMP .bb_main.2 
.bb_main.2:
JMP .bb_main.3 
.bb_main.3:
XCHG EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
STC  
OR DL, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
ADD DIL, -91 # instrumentation
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 41 # instrumentation
CMOVB RDI, RAX 
IMUL DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 10 
SBB CL, BL 
MOVZX RDI, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
STC  
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
CMP AX, 15417 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
