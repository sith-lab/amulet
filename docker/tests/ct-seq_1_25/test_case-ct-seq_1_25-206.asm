.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RAX 
XCHG EBX, ESI 
ADD RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
IMUL ECX, ECX 
CMOVNO EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
CMOVNBE RDX, RDX 
CMC  
SUB RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
MOV AX, DX 
MOV DI, -4700 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDX 
CMOVNP RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RSI] 
MOVSX ECX, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
CMOVNP DX, SI 
CMP AX, 13743 
MOVSX EDX, CL 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
