.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDX] 
CMP SIL, 8 
SBB CX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -14 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ESI 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -3 # instrumentation
CMC  
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -35 
INC RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 5 
JBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD DIL, -123 # instrumentation
CMOVB RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDI 
CMOVBE EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
ADD RSI, -96 
CMOVLE RBX, RSI 
ADC RDX, 4 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 10 # instrumentation
CMOVZ EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RSI] 
CMOVZ ESI, ESI 
DEC CL 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RCX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DI 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
