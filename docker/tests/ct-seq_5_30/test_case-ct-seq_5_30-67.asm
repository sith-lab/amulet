.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDX] 
SBB RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
MOV BL, 3 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -110 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RBX] 
CMP BX, SI 
LAHF  
ADD BL, 9 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
CMOVL RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -19 # instrumentation
LEA RDI, qword ptr [RAX + RSI + 17088] 
ADC DL, CL 
MOVSX CX, AL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDX 
ADD SIL, 1 # instrumentation
SBB AX, BX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RCX] 
IMUL EDI, ESI, 69 
CMP CL, -44 
DEC DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
