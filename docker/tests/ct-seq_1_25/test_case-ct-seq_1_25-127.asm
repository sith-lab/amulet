.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 63 # instrumentation
ADC AX, 8735 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
ADD AX, DI 
XCHG CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -16 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -88 
CMOVNP BX, SI 
IMUL RDX, RDX 
MUL RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
IMUL RSI, RCX, -49 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
MOV AL, -63 
MOV SIL, SIL 
ADC RCX, RCX 
NEG DX 
CMP RSI, -74 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
