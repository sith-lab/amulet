.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDI 
SUB RAX, -897207596 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX], 123 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], SI 
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
MOVSX BX, SIL 
JMP .bb_main.2 
.bb_main.2:
ADD AX, 6018 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 118 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD DIL, -25 # instrumentation
CMOVLE EBX, EDX 
SUB EBX, EBX 
MOV ESI, 30601174 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
