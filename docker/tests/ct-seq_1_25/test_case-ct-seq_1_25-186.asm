.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -80 # instrumentation
CMOVS CX, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX], -5 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
CMP RAX, -954700708 
CMOVL BX, DI 
CMOVNBE EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RCX] 
NEG BL 
CMOVP EBX, ESI 
CMP EAX, -785486329 
SBB RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RSI 
MOVZX ECX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -125 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
