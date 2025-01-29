.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
XCHG RDX, RAX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 29 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], -113 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
CMOVNO SI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RSI 
MOVSX EDX, AL 
JMP .bb_main.2 
.bb_main.2:
XCHG AL, AL 
NEG ESI 
CMOVNZ RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
ADD EAX, 1238272591 
CMP ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
ADD SIL, -30 # instrumentation
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDX] 
INC RDI 
MOV AL, AL 
SBB SI, DX 
MOVZX RCX, DL 
MOV BL, 78 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -55 # instrumentation
XCHG SI, AX 
LAHF  
ADC RSI, 63 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
CMOVNBE EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
