.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RAX, -82 
NOP  
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EDI 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -77 
ADD EAX, EDI 
CMP EAX, -771075462 
ADD ECX, EDI 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
NOT EDI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 42 
SETNP AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], BX 
MUL RCX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
IMUL DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
CMPXCHG BX, BX 
ADC CL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RBX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RDI 
SUB CX, BX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 65 
SETNL DL 
LEA EBX, qword ptr [RCX + RBX + 44577] 
CMP RAX, 82 
AND RDX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
