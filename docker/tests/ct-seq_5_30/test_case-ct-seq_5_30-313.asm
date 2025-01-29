.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
ADC ESI, ECX 
ADC EAX, 27 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RAX 
CMOVNBE DI, SI 
SUB DL, AL 
INC DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
ADD SIL, 16 # instrumentation
LAHF  
XCHG EDX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ESI 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB EBX, EDI 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
CMOVNP BX, CX 
BSWAP RDI 
ADD RBX, -108 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RSI] 
XCHG EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 117 
SUB DIL, 34 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 38 
SUB RAX, -1604293735 
LEA SI, qword ptr [RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
