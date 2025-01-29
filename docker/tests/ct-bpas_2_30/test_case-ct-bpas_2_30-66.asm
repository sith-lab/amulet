.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
XCHG RCX, RAX 
BSWAP RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
CMOVP RBX, RAX 
CMP SI, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
CMOVL RSI, RAX 
MOVZX ESI, SIL 
SBB AX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 125 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -82 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -25 # instrumentation
CMOVNZ EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -84 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
XCHG EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RSI] 
SUB RAX, -143763122 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RSI 
CMOVBE SI, SI 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -4 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
CMOVNZ SI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
