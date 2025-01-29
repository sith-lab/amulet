.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
ADD RCX, -55 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], 93 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 68 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDI 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DI 
INC EDX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 29 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
SUB RAX, -1019872688 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
