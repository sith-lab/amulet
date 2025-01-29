.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DI, SI 
BSWAP EAX 
LEA CX, qword ptr [RSI + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
ADD AX, 3413 
DEC ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 45 
CMOVNS SI, DX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -5 
JNLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 1 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -3 # instrumentation
CMOVNB BX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
CMOVNZ RDI, RAX 
NEG DL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
MOVZX BX, BL 
SBB EDI, EAX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
ADD RAX, -596379376 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RAX] 
ADD CL, DL 
SBB RDX, -58 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
