.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -24 
CMP AL, 83 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 73 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
CMC  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 58 
SUB CX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 20 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -119 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DIL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 74 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
