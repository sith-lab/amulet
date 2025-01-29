.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB AX, 88 
SBB RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -32 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDX] 
ADD DIL, -108 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -30 # instrumentation
LAHF  
MOV EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
CMP SIL, 49 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RSI] 
LEA RBX, qword ptr [RCX] 
MOV SI, 7851 
AND RDI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
CMP RAX, -2121462305 
CWD  
IMUL EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
CMOVB DI, CX 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
NEG AL 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD RAX, 2125932914 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -11 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
