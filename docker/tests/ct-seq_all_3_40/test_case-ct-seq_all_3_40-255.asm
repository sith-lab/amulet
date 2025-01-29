.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EAX, -1941195403 
MOVZX EBX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
ADD SIL, 29 # instrumentation
CMOVNZ RSI, RDI 
SBB BL, SIL 
CMOVNP BX, CX 
MOV EDI, ESI 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -8 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -36 
ADC BX, BX 
STC  
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
MOVZX AX, CL 
MOVZX CX, SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
MOVSX EDX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RSI] 
MOVZX RDI, BX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR RDX, -115 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
XOR BX, 123 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
SBB AX, -3034 
CMOVNBE RSI, RBX 
SBB RBX, 14 
IMUL EDI, EDI 
ADC SIL, 86 
CMOVS RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RSI 
TEST DIL, 85 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
