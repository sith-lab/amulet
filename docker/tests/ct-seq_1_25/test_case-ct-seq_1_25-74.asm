.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -10 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
SUB EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMOVNO EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RSI] 
INC ESI 
CMOVS AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RCX] 
CMOVP ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
CMOVNP DX, CX 
CLD  
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -28 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], CX 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 23 
DEC BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
INC EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
