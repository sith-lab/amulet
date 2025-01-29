.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 50 # instrumentation
CMOVLE DX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 107 
CBW  
CMOVS CX, DI 
CMOVNO ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 82 
ADC EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX], 119 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], AX 
CMOVNP CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 48 
SBB AX, -100 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
SUB DL, 64 
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DX 
MOV RDX, -287306784948622187 
IMUL BX, DX, -36 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
CMP EDX, EAX 
CMOVBE RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -10 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
