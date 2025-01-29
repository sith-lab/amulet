.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
IMUL RCX, RAX, 22 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -106 
CMOVO RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -109 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
