.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -4 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RAX] 
IMUL RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CBW  
DEC CL 
SBB RAX, -1197888564 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -7389 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RBX] 
CMOVNZ EDI, ECX 
SBB DX, DX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DI 
LEA RDX, qword ptr [RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
