.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DX 
DEC RCX 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
MOVZX ECX, DIL 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 1008311638 
CMOVNP BX, BX 
CMP AX, -8745 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
CMOVNO EBX, ESI 
SUB AL, AL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
MOVSX EBX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
