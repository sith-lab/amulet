.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDI, -77 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RCX] 
ADD SIL, 35 # instrumentation
CMOVS EBX, EDX 
CMOVNB DX, SI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -34 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 99 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -888801877 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
SBB EAX, 291633763 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
CMOVS RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
CMOVNB AX, CX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
CLC  
CMP DIL, BL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -3 # instrumentation
ADC SIL, 74 
CMP RCX, RDI 
CMOVNB RBX, RSI 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
ADC DIL, DL 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB EAX, -1331235889 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -3175 
INC AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
