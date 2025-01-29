.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RBX] 
CMOVNB RCX, RAX 
CMOVNZ EDX, EAX 
SETNB AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX], -55 
SUB EDX, EBX 
SBB SI, -7 
NOT DL 
SBB RAX, 98 
SBB RDX, 108 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -21 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], CX 
XOR DI, -34 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDI] 
SETS CL 
AND AL, -38 
OR AX, -524 
IMUL BL 
ADD SIL, -99 # instrumentation
CMOVBE RCX, RDX 
SETS DL 
SETB CL 
SBB BL, AL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], 120 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
MOVSX RSI, AL 
CMOVNO RAX, RCX 
AND AL, -83 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, 845178925 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 63 
ADC RSI, -96 
ADC SI, DX 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], DL 
OR SIL, -70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
