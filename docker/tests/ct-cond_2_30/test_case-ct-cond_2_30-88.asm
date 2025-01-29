.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], AX 
ADC CL, -104 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 43 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RSI] 
CMOVB RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -106 
MOV ESI, -1067307435 
LEA RBX, qword ptr [RCX + RBX] 
SBB BX, -126 
IMUL DI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP RDI, 52 
CLC  
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
ADD DIL, -17 # instrumentation
CMOVBE EDI, EDI 
SUB ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
SUB RAX, 414011573 
CMP AL, 127 
CMP RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
CMP SIL, 116 
CWD  
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
