.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 76 # instrumentation
SETL CL 
ADC EAX, -305318844 
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
ADD RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 87 
SUB EAX, -1154982995 
AND AX, 10147 
SBB SI, DX 
XADD EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 7 # instrumentation
MOVSX CX, DIL 
MOVZX EBX, SIL 
CMOVL RAX, RCX 
MOVZX RDI, CX 
TEST AX, -25163 
TEST RAX, 864365569 
LOOP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
CMP RSI, RDX 
CMOVNZ EDX, ESI 
XOR EDI, 30 
SETL AL 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 108 # instrumentation
SETO SIL 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 92 
AND RBX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
CMOVNL SI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -78 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -79 
CMOVO EAX, EDX 
OR AX, -1976 
ADC ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RBX] 
SETS CL 
AND CL, 14 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
