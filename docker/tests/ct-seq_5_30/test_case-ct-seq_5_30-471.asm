.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EBX 
CMOVP RCX, RCX 
CMOVNO RCX, RSI 
MOVSX EDX, DIL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
ADD RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX] 
ADD SIL, -26 # instrumentation
MOVZX ECX, CX 
CMOVLE RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RSI] 
XCHG ECX, ESI 
CMOVS RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RBX] 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], CX 
CMOVP EBX, ECX 
SAHF  
CMP RAX, -58 
STD  
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -68 # instrumentation
CMOVNO SI, DI 
IMUL DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RSI 
MOVSX EDI, BX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
INC BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
CMOVP ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
