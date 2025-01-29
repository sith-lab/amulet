.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -32 # instrumentation
MOVSX RDX, DL 
CMOVNP CX, DI 
CMOVNL RAX, RDI 
IMUL ECX, ECX, 41 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], -33 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDX] 
SETNB AL 
ADC EAX, -1431952527 
JMP .bb_main.1 
.bb_main.1:
XCHG CL, DIL 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDI] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], SI 
CMOVZ CX, BX 
XCHG AL, AL 
AND BL, 91 
CMPXCHG AL, AL 
AND DL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -19 
MOV BL, 45 
CMPXCHG SI, SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI], -80 
NEG EBX 
CMOVB ECX, ESI 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -41 # instrumentation
CMOVNZ ESI, ESI 
ADC AX, 2008 
CMP SIL, 124 
CMP BL, AL 
MOVZX EDX, DX 
SETL DL 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD SIL, 100 # instrumentation
SETL DL 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XOR AL, CL 
SETNLE BL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
ADD DIL, -20 # instrumentation
CMOVNL ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
