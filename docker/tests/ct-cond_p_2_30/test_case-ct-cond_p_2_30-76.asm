.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 1878738442 
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
CMOVNB EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
MOVZX EDX, CX 
CMP RSI, 61 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
ADD ECX, ESI 
IMUL RSI, RBX, 127 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 27 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], SIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDI 
CMOVNZ RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDI 
XCHG RAX, RAX 
XCHG RDX, RAX 
XCHG RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
CMOVNZ RCX, RSI 
CMOVO ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
