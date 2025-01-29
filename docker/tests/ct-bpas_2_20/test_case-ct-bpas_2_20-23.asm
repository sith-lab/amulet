.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI], -109 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 409784557 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 7 # instrumentation
CMOVNBE CX, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 93 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RAX] 
SBB DIL, -8 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
CMOVLE ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 85 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RSI 
CBW  
ADC BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
