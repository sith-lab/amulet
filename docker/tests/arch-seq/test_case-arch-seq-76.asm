.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
NEG SI 
AND RCX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RCX] 
SETZ CL 
CMOVLE RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
NOT DI 
XOR AL, 2 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -116 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
MOVSX EAX, BX 
AND RBX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RBX] 
SUB DI, AX 
XADD SI, CX 
CMOVNZ DX, DX 
NOT CL 
SBB RAX, -2041238537 
XOR SI, -16 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
OR AX, -19497 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -311057014 
SBB RDI, RDI 
INC BX 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
CMOVO ECX, EBX 
SETB AL 
AND RSI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RAX 
MOV RAX, 8783140758269520075 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
SETNL BL 
CMOVP RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], ECX 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EAX 
CMOVS DI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 28 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
