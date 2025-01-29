.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ECX 
CMOVNS CX, DI 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
NEG ECX 
MOV CL, BL 
AND RDX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDI] 
CMP SI, -30 
CMOVNL RDI, RAX 
SBB CL, AL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
INC DL 
XCHG SI, AX 
IMUL RCX, RDX, 98 
SUB SIL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -107 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 112 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDX 
SBB BL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -119 # instrumentation
SBB AL, -63 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
