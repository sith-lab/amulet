.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
CMOVNZ DI, DX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -47 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
SUB DL, AL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
IMUL ECX, EAX 
IMUL RCX, RDX, 69 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
XCHG RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -30 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 5 # instrumentation
CMOVL RAX, RSI 
NEG RBX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
XCHG CL, BL 
CMP BL, BL 
CMOVL RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DIL 
CMOVL AX, BX 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RCX 
SBB AL, -92 
CMOVNBE RSI, RBX 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
