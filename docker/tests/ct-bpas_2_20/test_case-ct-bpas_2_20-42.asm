.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
CMOVS SI, SI 
AND RDX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -8 
MOVSX SI, DL 
MOVSX RCX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -81 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 1865185620 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI], -23 
ADD DIL, 39 # instrumentation
CMOVBE DX, CX 
IMUL ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI], 71 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
