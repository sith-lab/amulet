.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDX] 
ADD ECX, -22 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RBX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
ADD SIL, -29 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RBX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 46 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
