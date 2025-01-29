.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -86 
SUB BL, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -962210480 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RCX] 
INC SI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
CMOVNO EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
MOV DI, -19263 
AND RDX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDX] 
CMOVO CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 102 
IMUL DX, DI, -69 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
ADD SIL, -64 # instrumentation
INC RAX 
ADC CX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDX 
SBB SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RBX, DIL 
NEG DL 
ADD AL, 120 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -60 
MOVZX DX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
