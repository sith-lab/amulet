.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, 487276381 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 45 
ADC SI, 5 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -128 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD SIL, 59 # instrumentation
XCHG word ptr [R14 + RCX], SI 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -78 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -53 
AND RDI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
