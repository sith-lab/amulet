.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
CMOVNZ RSI, RDI 
CMOVLE DI, DI 
MOV CL, BL 
MOVSX BX, AL 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
ADD SIL, 26 # instrumentation
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 125 
NEG EDI 
SUB DIL, 16 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -38 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
CMOVP CX, BX 
JMP .bb_main.2 
.bb_main.2:
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD DIL, -14 # instrumentation
CMOVNS AX, CX 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB SI, 75 
ADC AX, -27407 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1382790328 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -49 # instrumentation
SBB EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
ADD ECX, -23 
CWD  
MOVSX EDX, CL 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
CMOVL RCX, RAX 
MOVZX ESI, BX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
