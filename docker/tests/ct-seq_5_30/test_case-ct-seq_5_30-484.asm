.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 60 # instrumentation
CMOVNO EAX, ECX 
SBB SIL, CL 
SBB CL, AL 
ADD EAX, 38861163 
SBB RAX, 675408673 
SBB RCX, 73 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -18 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 92 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RBX] 
CMOVB DX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD CL, DL 
MOVZX RDI, DI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 37 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -36 # instrumentation
CMOVBE CX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
STD  
CMOVNBE RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DX 
DEC RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
MUL SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ECX 
IMUL CL 
SUB AL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
