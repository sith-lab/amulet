.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DIL 
CMOVO ECX, EDI 
STD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
MOVSX ECX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RAX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
IMUL EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
