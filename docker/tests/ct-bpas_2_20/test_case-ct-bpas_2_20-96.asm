.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDI 
INC EBX 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 100 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RAX] 
SUB AX, -23372 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RSI] 
DEC CL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 16 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 111 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -446854722 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
