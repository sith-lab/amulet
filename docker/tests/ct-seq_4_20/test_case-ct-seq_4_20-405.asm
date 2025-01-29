.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RAX] 
IMUL BL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 109 
AND RDI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
SUB SIL, 60 
AND RBX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RBX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -11 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -68 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -120 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 37 
ADC RAX, 191730741 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
