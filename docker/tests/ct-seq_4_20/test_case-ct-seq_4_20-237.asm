.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
MOVSX DX, SIL 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CDQ  
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], AX 
MOV DX, 24307 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
NEG SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -28 
CMOVS RBX, RAX 
CMOVNBE RDX, RDI 
CMOVS BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
