.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
SUB DL, AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI], 53 
ADD SIL, -3 # instrumentation
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 33 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 21 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -122 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 84 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
