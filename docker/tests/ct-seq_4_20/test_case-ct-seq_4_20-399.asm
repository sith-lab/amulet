.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -13 # instrumentation
CMOVB ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDX] 
IMUL ECX, EDX, -74 
ADD DIL, 109 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RCX 
CMOVNLE ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ESI 
STC  
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RCX] 
LEA EBX, qword ptr [RSI + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDX] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
DEC EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
