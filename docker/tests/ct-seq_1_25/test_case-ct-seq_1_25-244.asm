.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RSI] 
BSWAP RAX 
CMP EAX, -1553194207 
AND RDI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDI] 
CMOVNL RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -123 
ADD ESI, -117 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDX] 
NEG CL 
CMOVNBE BX, DX 
CMOVNP EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RSI] 
NEG BL 
AND RSI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
