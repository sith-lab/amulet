.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RCX] 
SUB RAX, 821440633 
MOV AL, 9 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -72 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], BX 
SBB EDI, -13 
CMP CX, 35 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], SI 
CMOVBE DI, CX 
CMOVNL SI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -12 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -40 
AND RSI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 865747996 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ECX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB RAX, -835177739 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
MOVZX RDX, DI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
XCHG AL, DL 
IMUL EAX, EDI 
MOVZX RDX, DX 
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RCX] 
CMOVLE DX, SI 
IMUL DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
