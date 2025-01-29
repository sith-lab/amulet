.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RAX, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
XCHG EBX, EDI 
XCHG CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
ADD DIL, SIL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 75 # instrumentation
SBB DI, AX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
CMP CL, 33 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RBX] 
SUB SIL, -111 
ADC BL, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
