.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
ADD DIL, -67 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 120 # instrumentation
CMOVB RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -64 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DIL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 114 # instrumentation
CMOVO RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
CMOVNO SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
