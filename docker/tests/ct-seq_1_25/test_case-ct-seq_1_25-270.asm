.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RSI] 
MOVSX EBX, AL 
AND RCX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
MOV DL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDX] 
ADD SIL, -19 # instrumentation
SBB SI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], ECX 
ADC AX, 12116 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
MOVZX BX, CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 48 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RAX] 
SUB RAX, 1636131985 
LEA RDI, qword ptr [RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 49 
XCHG BL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDX] 
DEC RBX 
ADD BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
