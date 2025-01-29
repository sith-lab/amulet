.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -55 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RCX 
SUB BL, -29 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -51 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RBX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AL, 106 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
MOVZX EDI, DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI], 26 
SUB CL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RBX] 
SUB RAX, -38 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
