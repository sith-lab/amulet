.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 98 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
CMOVO RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 2 
CMOVNL EAX, EDX 
SBB AX, 12385 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -126 
MOVZX RCX, BL 
SBB CL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -112 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EBX 
SBB AL, -36 
AND RSI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDX 
CMOVP RDX, RAX 
ADC CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
