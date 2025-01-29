.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
SUB EDX, ECX 
XCHG CL, BL 
MOV ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
ADC AL, 20 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RBX] 
MUL RDI 
SUB EDX, 4 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
MUL EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -7 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 127 
NEG DX 
MUL EDI 
CMP RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -111 
AND RDX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
CMOVBE RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
MOV RSI, 8252038117706585971 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
