.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -24 
AND RDI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 10 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -76 
MOVZX ECX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 121 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
CMOVNBE BX, DX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 110 # instrumentation
CMOVLE RSI, RAX 
XCHG DIL, CL 
SBB EAX, ECX 
CMOVNZ RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -78 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
XCHG BL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
