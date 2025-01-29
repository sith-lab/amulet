.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
ADD SI, -90 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 107 
CMOVL EDX, ESI 
CMOVNB RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
CMOVNBE EDX, ESI 
IMUL EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
CMOVB EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
ADC BX, 103 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
NEG DIL 
CMOVNL ECX, EDX 
INC AL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
CMP ESI, EDX 
CMOVZ ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
MOVSX EDX, BX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 61 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
