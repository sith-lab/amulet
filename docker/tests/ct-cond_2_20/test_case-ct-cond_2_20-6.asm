.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
CMP RAX, -810659690 
ADC SI, SI 
AND RDI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RAX] 
CMOVNLE DX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDI] 
CMOVS BX, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -105 
MOVSX ECX, AL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], CX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
XCHG RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
