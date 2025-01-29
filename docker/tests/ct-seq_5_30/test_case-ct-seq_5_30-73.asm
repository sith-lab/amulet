.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDI] 
DEC SI 
JMP .bb_main.1 
.bb_main.1:
XCHG ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -72 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
SBB EAX, -1329473198 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
IMUL CX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -7 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDI] 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RSI] 
ADD EBX, -89 
AND RDX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDX], 6 
NEG SI 
CMOVNBE RDI, RDX 
CMOVNB RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
MOVSX CX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
CLC  
CMOVO EDI, EBX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 106 
AND RCX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RCX] 
ADD RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
DEC RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
