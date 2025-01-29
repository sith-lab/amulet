.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -124 # instrumentation
CMOVNLE EBX, EBX 
SUB AL, 32 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDX] 
CMOVNP RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
MUL SI 
MOVZX EDX, AX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EAX 
SBB DIL, -118 
CLD  
AND RSI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RSI] 
CMOVNBE EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDX 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 48 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMP RAX, -453405599 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 24 
XCHG AX, AX 
CMP RDI, 94 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
IMUL RAX, RDI, -98 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -29830 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
ADD AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
