.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RSI] 
CLC  
IMUL BX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDI] 
LEA BX, qword ptr [RDI + RSI + 34449] 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 114 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
CLC  
SUB EAX, 520004501 
LEA RSI, qword ptr [RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 12 
MOVSX ESI, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
CMOVS DI, DI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
