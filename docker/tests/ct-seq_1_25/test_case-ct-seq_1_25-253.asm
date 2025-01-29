.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDI] 
BSWAP ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
CMOVO EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RAX] 
CMOVBE ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -97 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -80 
MOVZX RAX, BL 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
XCHG AL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ECX 
CMP EAX, -1543027399 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -330891050 
STD  
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -122 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
