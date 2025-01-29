.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
MOV RDX, -1977770372697012616 
NEG BL 
ADD AX, -31049 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 106 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -6 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -11 # instrumentation
CWDE  
CMOVL BX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 113 
ADC DX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
