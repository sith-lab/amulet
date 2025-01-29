.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RBX] 
MOVZX RAX, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 29 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], -62 
ADD SIL, 80 # instrumentation
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 9 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
ADD SIL, -75 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDI] 
INC RDI 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
