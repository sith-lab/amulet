.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -96 
MOVZX EDX, SIL 
CMP RAX, -510416794 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], SI 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
MOV EAX, ECX 
JNBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
LEA CX, qword ptr [RSI + RBX] 
ADD SIL, CL 
SUB AX, 23060 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
CMOVNP CX, DX 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -34 # instrumentation
MOVZX SI, BL 
CMOVP RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
SUB AL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EBX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
INC ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOV BL, 22 
NEG BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
