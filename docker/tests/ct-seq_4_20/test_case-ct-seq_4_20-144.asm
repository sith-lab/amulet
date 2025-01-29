.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -64 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RBX] 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 72 
CMOVP RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RSI 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], 50 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
NEG AL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
NEG DI 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDI 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 19 
CMOVNP RAX, RBX 
MOV RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
