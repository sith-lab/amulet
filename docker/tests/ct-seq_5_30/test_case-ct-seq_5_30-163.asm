.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
ADD SIL, -81 # instrumentation
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADD BL, AL 
CLD  
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RSI] 
SUB ESI, EDX 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RSI 
CMOVNL SI, SI 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RCX] 
SBB EDI, 39 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -95 # instrumentation
CMOVZ SI, AX 
CMOVBE EDX, ESI 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -100 
CMOVO AX, DX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -127 
CMOVBE DX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -20 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
