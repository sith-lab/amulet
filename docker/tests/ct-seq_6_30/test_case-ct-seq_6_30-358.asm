.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DL, CL 
MOVSX RDI, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 80 
AND RDX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RDX] 
ADD CX, DI 
ADD BL, CL 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
CMOVB RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 88 
CMP AL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 309271756 
SBB EAX, 1083389782 
MUL RCX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 30 
ADC AL, -88 
AND RAX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI] 
ADD DIL, 109 # instrumentation
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -91 # instrumentation
SBB RDX, RSI 
INC EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EAX 
CLD  
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
