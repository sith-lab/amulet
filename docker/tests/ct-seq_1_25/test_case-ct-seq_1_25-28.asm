.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 80 
INC CX 
AND RBX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RBX] 
NEG EBX 
OR DL, 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 35 
ADD DIL, -29 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
CMOVP RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
DEC SI 
NEG DI 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -16 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
CMOVO CX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RCX] 
NEG EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
