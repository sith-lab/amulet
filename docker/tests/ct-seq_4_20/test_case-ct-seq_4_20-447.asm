.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RAX] 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -37 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -63 
CMP RAX, RDX 
INC SI 
CMOVNZ CX, SI 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -28 # instrumentation
SBB RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 115 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
