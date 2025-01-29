.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EDX 
CMOVNP BX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RCX] 
MUL RDI 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDI 
NEG DX 
AND RSI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RSI] 
CMOVS RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
CBW  
CLD  
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI], -103 
IMUL DX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 56 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -15 
ADC RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 97 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
