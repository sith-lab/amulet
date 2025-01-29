.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
SBB AX, -24035 
MOV BL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RAX] 
SUB AL, 87 
MOV RBX, -1161575548561162814 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
CMOVNL RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
MOVSX EAX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
CMP DL, AL 
MOV RDI, -1811767649757344364 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
MOV BX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -98 
MOVSX EBX, BL 
NEG DIL 
ADD CX, 4 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
ADD AX, -30727 
ADD RAX, 1154869959 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
