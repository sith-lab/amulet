.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
SUB BL, -33 
AND RDI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
ADC EAX, 646634010 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -30 
CMOVNB BX, AX 
ADC CL, AL 
CMOVNLE RSI, RCX 
SBB EAX, 1245055155 
MOV CL, 92 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDI] 
CMC  
CMP SI, 15 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -118 
SUB SIL, -98 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
LAHF  
JMP .bb_main.4 
.bb_main.4:
MOVSX CX, BL 
SUB RSI, 35 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
XCHG BX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -113 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
