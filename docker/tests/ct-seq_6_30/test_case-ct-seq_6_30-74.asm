.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
ADC ECX, ESI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 100 # instrumentation
CMOVNB AX, SI 
CMOVBE DX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 64 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
MOVSX BX, AL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 120 # instrumentation
MOVSX SI, DL 
ADC DX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
MOVZX RDI, DL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -96 
MOVSX RSI, DL 
CMOVLE RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -87 # instrumentation
CMOVBE SI, AX 
XCHG EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RBX] 
IMUL RDI, RBX 
ADD DIL, -119 # instrumentation
MOVSX ESI, DL 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
CWD  
ADD EAX, 1791638895 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
ADD DIL, 126 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
