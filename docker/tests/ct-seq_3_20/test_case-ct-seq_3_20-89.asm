.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 53 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -9 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RBX] 
CMP RAX, 1997505258 
AND RBX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
IMUL RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
AND RSI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RSI] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ECX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
XCHG SI, AX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
