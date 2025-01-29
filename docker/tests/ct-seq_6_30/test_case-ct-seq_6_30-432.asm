.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX] 
CLC  
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 63 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
IMUL AL 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB DL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DI 
CMOVNLE EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], AX 
CMP DL, SIL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -44 # instrumentation
CMOVP AX, BX 
ADC EAX, 1103388815 
CMOVNO EAX, ESI 
ADC RAX, 240698090 
CMOVNP DX, BX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RSI] 
INC RBX 
CMOVZ RDX, RCX 
CMOVB RDI, RAX 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
MOVZX DX, DIL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
MOV SI, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDX 
CMOVO CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
