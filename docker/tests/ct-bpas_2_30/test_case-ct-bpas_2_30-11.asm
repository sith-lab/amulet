.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -128 # instrumentation
XCHG RDI, RCX 
CMOVLE ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
CMP AL, 57 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
SBB CL, SIL 
SBB DI, 123 
ADC EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
NEG BX 
ADC RDX, -93 
ADD AL, -56 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -44 # instrumentation
ADC DI, DX 
ADC SI, 54 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI] 
ADD SIL, -69 # instrumentation
CMOVL RSI, RAX 
SBB AX, -406 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 4 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
CLD  
ADD SI, DX 
MUL ESI 
ADC RCX, RDI 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
CMP EAX, -96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
