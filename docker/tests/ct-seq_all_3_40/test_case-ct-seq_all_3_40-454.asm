.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EAX 
XCHG RAX, RDI 
MOV DL, -85 
XADD EBX, EAX 
CMOVL AX, AX 
AND DIL, 111 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EDX 
SUB ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 1 
ADC AX, 21889 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
CMP EAX, 82 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DI 
CMOVBE RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
SETS BL 
AND CL, AL 
XOR EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
MOV BL, -56 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
ADD SIL, 66 # instrumentation
CMOVNL RDX, RDI 
SETBE BL 
ADD RAX, 913627314 
NOT SI 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], AX 
XCHG EDX, EAX 
OR BX, DI 
MOV EBX, -1560919889 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
XOR BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
