.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 107 # instrumentation
CMOVNS SI, CX 
CMOVL DX, DI 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
CMOVNBE DI, CX 
AND RAX, 1572261064 
CLD  
MOVZX ESI, BL 
NEG AL 
ADC EBX, EBX 
XOR RAX, 1795325573 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
ADC RDI, RDX 
CMOVNBE EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RSI] 
ADD DIL, -52 # instrumentation
MOVZX RBX, BL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -123 # instrumentation
ADC CX, -112 
CMOVBE ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], DL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
OR AX, 104 
AND CL, DIL 
ADC AX, -22506 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 20781 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
CMP DL, 103 
BSWAP RBX 
MOVSX EAX, SI 
CMOVNO RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX], 120 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
XCHG CX, AX 
CMOVB ECX, EDI 
OR ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
