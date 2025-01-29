.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDI] 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
ADD DIL, -123 # instrumentation
CMOVNL AX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 16 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG RSI, RSI 
ADD SIL, 73 
OR SI, 0b1000000000000000 # instrumentation
BSR CX, SI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
ADD DIL, 9 # instrumentation
DEC RSI 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOV RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDX] 
ADC SIL, -12 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -59 # instrumentation
CMOVNO EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
ADD BX, 9 
LOOPNE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -59 # instrumentation
CMOVNL RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
IMUL BX, DX, 30 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
JMP .bb_main.5 
.bb_main.5:
XCHG AL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
