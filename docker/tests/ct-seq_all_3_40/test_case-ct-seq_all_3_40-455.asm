.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], -10 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
SBB AX, 22017 
SETL SIL 
SUB RAX, -711850462 
AND RSI, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RSI] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], 8 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], -47 
CMOVL DX, CX 
DEC DIL 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
CMOVB RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], -118 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -126 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
NEG AL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 42 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
CWDE  
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
ADC DI, BX 
SETS AL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], -72 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
SUB EDI, ESI 
CMPXCHG DL, DL 
LEA DI, qword ptr [RCX] 
XOR RDI, -102 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
CMOVNL RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
