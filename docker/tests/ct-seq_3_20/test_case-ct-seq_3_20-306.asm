.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
CMP EBX, -109 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
CMP CL, DL 
CMOVB RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
SUB ESI, 9 
AND RDI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
