.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RCX] 
ADD AL, -8 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
ADC SI, BX 
JMP .bb_main.1 
.bb_main.1:
ADD AX, 31562 
SBB RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DI 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
NEG CL 
SBB EAX, -1322438048 
CMP DIL, -123 
CMP BL, 74 
SUB DIL, AL 
IMUL RSI 
ADC AL, DL 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 87 # instrumentation
CMOVP AX, CX 
MOVSX DI, CL 
CMOVNZ SI, BX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
ADD DIL, 27 # instrumentation
JS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1734966239 
JMP .bb_main.5 
.bb_main.5:
SAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RSI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
IMUL ECX, EDX, -61 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -3974 
CMOVLE RCX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
