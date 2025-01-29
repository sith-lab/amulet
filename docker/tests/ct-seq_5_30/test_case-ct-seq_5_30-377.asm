.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, -15262 
XCHG CL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 83 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX] 
CMOVB AX, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ECX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DL, CL 
ADC EDI, 75 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
MUL RDI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -105 
INC DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDI] 
CMOVP RSI, RDI 
SUB EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 27 # instrumentation
SBB AX, -8814 
SUB BL, -115 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -53 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
NEG EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
