.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 97 
AND RDI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
CMOVNZ RSI, RDX 
CMP EBX, -19 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
STC  
NEG SIL 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 12 # instrumentation
SBB SIL, -42 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RAX] 
STC  
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -13 # instrumentation
SBB DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RBX] 
MOVSX EDX, BX 
CMOVS AX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 114 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 0 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -93 
SBB SIL, 49 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 47 
DEC RCX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
MOV RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
