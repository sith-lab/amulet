.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AX, 24732 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
XOR AL, 107 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
CMOVNL EBX, EDI 
AND BL, 108 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
NOT RDX 
MUL EAX 
OR DX, 43 
MOVZX RDI, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MUL AL 
CMP EAX, -79 
CMOVNB EAX, ESI 
SETBE BL 
CMOVNBE EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDI] 
NOT CL 
AND RCX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RCX] 
NOT RAX 
CMOVNL EAX, EAX 
CMOVO RDX, RCX 
SBB SIL, 70 
AND RDX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
SBB SIL, 121 
CMP EAX, 1603142898 
MOVSX EDX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
XADD EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -3 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
SBB RAX, 1302723523 
TEST CL, DIL 
TEST ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
