.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 51 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
CMOVO EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
MOVSX EDX, BL 
XCHG CX, AX 
INC CX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 33 
MOV BX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDI 
CMOVB AX, SI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
SAHF  
MOVZX EDX, SIL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
ADD DIL, -61 # instrumentation
CMOVBE ESI, EDI 
MUL RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -1 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 78 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 28 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDX] 
IMUL AL 
ADD DIL, -39 # instrumentation
CMOVLE DX, CX 
ADC SIL, 8 
ADC AX, 3857 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
