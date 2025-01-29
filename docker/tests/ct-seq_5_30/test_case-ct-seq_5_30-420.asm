.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
SBB RBX, 53 
IMUL RDX, RBX, 37 
MOV BX, DI 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
ADD SIL, -82 # instrumentation
CMOVNP EDX, EDI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 87 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
CMOVP CX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
CMOVP AX, DX 
JMP .bb_main.2 
.bb_main.2:
CMP RDX, 64 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
XCHG RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
ADD DIL, -115 # instrumentation
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 38 # instrumentation
ADC DIL, -85 
LEA RDI, qword ptr [RSI + RSI + 32257] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
MUL EBX 
ADD SIL, 122 # instrumentation
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
NEG BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
ADD RSI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
