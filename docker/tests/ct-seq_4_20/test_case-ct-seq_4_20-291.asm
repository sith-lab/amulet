.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
IMUL RAX, RSI, -113 
SBB DIL, -90 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
NEG RCX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -86 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 81 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RAX] 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
