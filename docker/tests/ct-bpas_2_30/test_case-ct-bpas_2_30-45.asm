.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP CL, AL 
CWD  
MOVSX EDI, DIL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
SBB RSI, 7 
IMUL RBX, RBX 
ADD SIL, 87 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -82 # instrumentation
CMOVO ESI, EDI 
CMP RDX, -41 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
ADC DI, BX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RCX] 
INC CL 
ADD EAX, 206403796 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -66 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], CX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -39 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 13 
MOV RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
