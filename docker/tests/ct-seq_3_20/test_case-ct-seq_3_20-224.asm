.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
DEC RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RCX] 
CMOVNB RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], SIL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
ADD SIL, -41 # instrumentation
CMOVL RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
MOVSX EDI, SI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
CMOVLE EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], AX 
CMOVNZ RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RCX 
SUB DX, -16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
