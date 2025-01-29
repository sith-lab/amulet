.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
NEG RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
JMP .bb_main.1 
.bb_main.1:
SUB RAX, 1387498574 
CMOVB AX, DX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 45 # instrumentation
CMOVNP EBX, ESI 
CMOVB ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -115 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1610114475 
MOV DL, -99 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -11 # instrumentation
SBB AL, -79 
SUB AX, -1933 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -111 
ADC DIL, -116 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
XCHG AL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
