.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
SUB RDI, -82 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
ADC CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EDX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -30 
MOV SI, AX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DIL 
JMP .bb_main.2 
.bb_main.2:
MOV CL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
CMOVLE ECX, EDI 
ADC RAX, 1407730885 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -104 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
