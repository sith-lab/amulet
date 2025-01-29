.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
CMOVL EBX, EDI 
SBB SIL, -14 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
CMOVL AX, AX 
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, 40 # instrumentation
ADC RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RCX 
ADC ECX, ECX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 95 # instrumentation
ADC RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
INC BL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
CMOVO EDX, EDX 
ADD RAX, 2024413499 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL ECX, EAX, -73 
ADD SIL, 81 # instrumentation
CMOVNZ DX, DI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
CMP EDI, -94 
CMP EDX, -41 
SBB DL, BL 
MUL EDX 
SBB DI, SI 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
SBB ECX, 4 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
MOVSX EDX, AL 
CWD  
NEG BL 
CMOVL RBX, RBX 
SBB EAX, -384765810 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
