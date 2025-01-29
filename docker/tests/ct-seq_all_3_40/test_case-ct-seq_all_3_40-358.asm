.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 120 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDI] 
CMOVP DX, DI 
AND AL, -60 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, -98 # instrumentation
SETZ AL 
SETNLE CL 
ADC CL, -114 
SETNLE BL 
SBB RDI, -44 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], AX 
XOR AL, DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -127 # instrumentation
SETNO AL 
DEC SI 
DEC BL 
XCHG DL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RCX] 
TEST RDI, 1334631792 
CMP CL, SIL 
MUL EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDI 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
STD  
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 49 # instrumentation
CMOVNL RBX, RCX 
ADD CL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 107 
ADD EDI, -90 
AND RAX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDI] 
CMOVNZ RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
ADC SI, 63 
TEST ECX, EDX 
ADD ESI, 18 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
TEST EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
