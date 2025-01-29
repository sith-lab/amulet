.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -38 # instrumentation
ADC ESI, EDI 
ADD DX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RCX] 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 8 # instrumentation
ADC DIL, -15 
CMOVB CX, SI 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 65 
AND RDX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -33 # instrumentation
ADC DIL, CL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], BX 
MOVSX EAX, BL 
SUB AL, 32 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDX] 
XCHG AX, AX 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -68 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 119 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 27 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 86 
CMP DL, BL 
CMOVNO RDI, RSI 
CMOVLE EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
