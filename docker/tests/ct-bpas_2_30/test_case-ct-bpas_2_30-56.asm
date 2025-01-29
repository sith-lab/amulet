.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 89 # instrumentation
SBB CL, DL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
CLC  
MOVZX EAX, BX 
XCHG ECX, EAX 
XCHG AL, CL 
MOVSX RSI, SIL 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
SBB BL, AL 
CMOVNLE DI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ESI 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 126 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
MUL EBX 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RSI] 
CMP RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
CMOVO DX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
SUB DIL, 51 
CMC  
MUL RCX 
INC EAX 
MOVSX EDI, CL 
MOVSX EAX, AL 
IMUL DX, BX, -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
