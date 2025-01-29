.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -71 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -103 
JNLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
MOVSX SI, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
SBB RAX, 614859619 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 13 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 96 # instrumentation
CMOVLE ESI, EBX 
CMP EAX, 1586317688 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDI] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
ADD DIL, -52 # instrumentation
ADC SIL, AL 
CMOVO DI, AX 
MOV DI, -14282 
INC AX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 30 # instrumentation
ADC RDI, -28 
CMOVL EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
CMP AL, BL 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP EAX, -2041233900 
CMOVNO SI, DX 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
