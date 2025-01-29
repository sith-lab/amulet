.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RSI, DIL 
MOVSX RDX, BL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
ADD SIL, DIL 
SBB SI, 96 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -72 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 64 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
SBB CX, -112 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 1 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
SUB AX, 70 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
