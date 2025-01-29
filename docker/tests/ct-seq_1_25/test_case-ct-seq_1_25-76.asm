.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
OR DL, 1 # instrumentation
SBB AL, -84 
ADD EAX, 1238572767 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RSI] 
CMOVP EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 28 
CMOVNO ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
SUB CL, AL 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
MOV EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
ADD SIL, -90 # instrumentation
LAHF  
SUB RAX, -880633307 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -96 
CMOVL EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
ADD RSI, RAX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
