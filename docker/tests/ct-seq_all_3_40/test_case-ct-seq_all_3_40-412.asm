.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 20 # instrumentation
SETS AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
XCHG DX, SI 
DEC AL 
SETB DIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
DEC AL 
SETO CL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
DEC BX 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RAX] 
XOR AL, 20 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
CMP ESI, 100 
ADC RAX, 83 
NEG RDX 
CWD  
CMP BL, -96 
JMP .bb_main.2 
.bb_main.2:
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
CMOVBE RDX, RDX 
SETNP BL 
CMP ESI, ESI 
AND AL, -111 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
MOVSX RSI, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RBX] 
SUB AX, 16551 
MOVZX EDI, SIL 
SETNL DL 
CMP EAX, ESI 
SETNB DIL 
MOV AX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RAX] 
XOR DI, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
