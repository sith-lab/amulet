.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -38 
CBW  
CMP SI, 84 
SBB DX, SI 
XCHG RCX, RBX 
ADD RCX, -20 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 83 
CMOVLE RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 80 
CMOVB EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 1883019089 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDX 
CMOVLE SI, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 827231945 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
CMOVO RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
