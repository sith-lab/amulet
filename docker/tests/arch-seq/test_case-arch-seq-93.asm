.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RBX] 
INC DIL 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, 3 # instrumentation
ADC RAX, -220626627 
MOV DI, 23609 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -49 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
CMOVNS DX, AX 
CMOVZ EDX, ECX 
AND BL, -79 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CMPXCHG AL, BL 
ADD DI, DX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -712504346 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
SETB SIL 
SETNZ BL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DX 
CMP EDI, -68 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLD  # instrumentation
ADD SIL, 112 # instrumentation
CMOVNB EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
ADD AL, -77 
SETNBE DL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 73 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], DIL 
AND AX, 24407 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
SETNL DIL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
CMP RDX, RDI 
NOT RBX 
CMOVNL CX, BX 
IMUL EDI, EDX 
ADD SIL, -54 # instrumentation
CMOVNP ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 68 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
