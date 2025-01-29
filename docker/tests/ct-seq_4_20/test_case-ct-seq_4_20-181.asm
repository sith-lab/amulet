.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, -586003007 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
CWD  
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 73 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
ADD DIL, 5 # instrumentation
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 115 # instrumentation
CMOVL SI, SI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 45 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
CMP EAX, -2011016784 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 113 # instrumentation
CMOVZ AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RCX] 
MUL CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
