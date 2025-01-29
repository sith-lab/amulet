.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 30 # instrumentation
ADC AL, -63 
ADC ESI, -103 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDI] 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD SIL, 44 # instrumentation
BSWAP RAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
SBB DX, DX 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 117 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
ADD DL, AL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
MOV AX, CX 
XCHG SIL, CL 
SBB EAX, 2114658131 
SUB EAX, 1769609821 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RSI 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -10 # instrumentation
CMOVNP EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
CMOVS DX, AX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EAX 
MUL EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
