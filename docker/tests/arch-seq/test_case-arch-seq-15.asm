.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT SI 
AND RSI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
SUB ECX, -123 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], DL 
DEC DL 
SUB EBX, ESI 
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
SBB RSI, -29 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
MOV BX, CX 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD EDX, 71 
CMOVNBE BX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX RAX, AL 
MOV RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RDX 
XOR RAX, -2114508766 
AND RDI, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDI] 
DEC AX 
JMP .bb_main.3 
.bb_main.3:
AND EAX, 591661060 
CMPXCHG CX, DI 
AND RCX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDI] 
ADC EDX, -117 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
SETL AL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -12 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
CDQ  
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
NOT RBX 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
SETNL BL 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
MOVSX RSI, BL 
TEST EAX, -197116235 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
CMPXCHG AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
