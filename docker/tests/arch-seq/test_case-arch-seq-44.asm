.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RAX] 
CMOVBE CX, DX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], -41 
SETZ CL 
OR AX, -125 
TEST CL, 96 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], DIL 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV EDX, EAX 
ADD AL, 93 
AND AX, -14313 
OR AX, 0b1000000000000000 # instrumentation
BSR AX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RCX] 
SUB RCX, RCX 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD SIL, -121 # instrumentation
SETO CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX], 107 
SETNB AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RCX] 
SETS BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], CX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], ECX 
TEST EAX, 92157332 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  # instrumentation
ADD ECX, -2 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
ADC AX, -73 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
ADD RDI, RSI 
SUB BL, CL 
MUL CX 
DEC DIL 
CMOVNB EDX, ESI 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
CMOVP SI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
OR ECX, 89 
AND RCX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
