.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 499824688 
CMOVLE SI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDI 
MOV RDI, RCX 
XCHG DI, AX 
MOVZX CX, BL 
SUB RBX, RAX 
MOV AL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], BX 
MUL EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
SETNLE DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RCX 
OR ECX, EAX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], BX 
CMOVNLE RDI, RCX 
MUL DL 
ADC DIL, -60 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
ADD SIL, 67 # instrumentation
CMOVNL EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
DEC SIL 
CMP SIL, 7 
SETBE DL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
OR AL, 33 
SETNLE DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
ADD RDX, -108 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RDX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EBX 
XOR EBX, ECX 
IMUL DX, BX, -83 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDI] 
SETNLE SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
