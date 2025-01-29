.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -89 
ADD AX, -15386 
AND RSI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RSI] 
SUB RDX, -61 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -95 
ADD BL, -60 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DIL 
JMP .bb_main.2 
.bb_main.2:
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
ADC RAX, 123382308 
MOV RCX, RCX 
SBB RCX, RSI 
JNLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -119 # instrumentation
CMOVO RDI, RCX 
CMP RDI, RSI 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ESI 
SBB ESI, 46 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
ADD DIL, -25 # instrumentation
CMOVBE EBX, ESI 
OR EDX, 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
SUB RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -33 
AND RCX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RCX] 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP AL, -81 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
