.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -58 # instrumentation
SBB AX, DX 
SUB BL, CL 
SBB EAX, EDX 
ADC AL, DL 
MOVZX DI, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 80 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
CMOVNO ECX, EBX 
SUB RDI, 74 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 104 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RSI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
MOVZX RSI, DI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
JRCXZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, 80 # instrumentation
CMOVP EDI, ECX 
STD  
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
