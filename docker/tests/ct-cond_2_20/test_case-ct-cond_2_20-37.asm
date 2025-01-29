.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -6 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
SBB AL, 72 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RSI] 
CMOVNS EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
CWD  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
INC CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
