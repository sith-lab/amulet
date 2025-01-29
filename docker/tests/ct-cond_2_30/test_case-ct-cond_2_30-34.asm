.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDX 
LEA RDX, qword ptr [RDI + RDX + 27221] 
NEG RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
NEG BL 
INC EAX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
CWDE  
SUB RCX, 107 
DEC RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -126 # instrumentation
CMOVNBE RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
MOVSX RCX, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
CMOVP RAX, RSI 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], 73 
ADD AX, 23218 
SUB EAX, -1574642271 
CMOVNL SI, BX 
CMOVP RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 104 
NEG DIL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
