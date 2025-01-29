.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDX 
ADD AL, 76 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
ADD DIL, -33 # instrumentation
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RAX] 
CMOVP EAX, EDI 
SUB AL, -93 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -28234 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
MUL EAX 
CWDE  
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
ADD SIL, 49 # instrumentation
SBB EAX, ECX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX EBX, SIL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD SIL, -51 # instrumentation
CMOVS EAX, EDX 
SBB AX, -31412 
JMP .bb_main.4 
.bb_main.4:
SUB CX, -111 
CMOVL RDI, RCX 
BSWAP RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RBX] 
SBB AL, -77 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -59 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -124 # instrumentation
SBB RBX, 45 
CMOVNP ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
