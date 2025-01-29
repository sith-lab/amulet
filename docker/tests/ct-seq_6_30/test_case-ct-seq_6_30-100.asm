.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DI, SI 
DEC EDI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RBX] 
IMUL RAX, RSI 
ADD DIL, -26 # instrumentation
CMOVNZ RSI, RCX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 20 # instrumentation
CMOVNP RDI, RDX 
ADC AL, -103 
NEG AL 
JMP .bb_main.3 
.bb_main.3:
ADD BX, 111 
XCHG SIL, SIL 
MOVSX ECX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
IMUL EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
JNBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RAX] 
CMP AL, 15 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 121 # instrumentation
SBB RCX, RDI 
ADC AL, -60 
AND RDI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RSI] 
MOV EAX, -177132346 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
ADD DIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
