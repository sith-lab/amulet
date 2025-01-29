.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RSI, 67 
CMOVO RDX, RDI 
CMP EDI, -79 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
CMOVLE RDI, RDI 
CMOVBE RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 23 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RDX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 118 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 19 
SBB CX, 18 
ADC ESI, ECX 
SUB RAX, 453022135 
CMOVLE ESI, ECX 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
CMOVB RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RCX] 
SBB RCX, RDI 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -121 # instrumentation
CMOVLE SI, DI 
MOVZX RCX, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
