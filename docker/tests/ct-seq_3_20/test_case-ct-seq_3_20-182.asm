.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 28 
CMOVZ BX, BX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
CMOVNLE ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB DIL, -113 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 99 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 24 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -7183 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL RDX, RBX 
IMUL ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
