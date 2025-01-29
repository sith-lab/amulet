.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 122 # instrumentation
CMOVO AX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 431853898 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 47 
CMOVNBE RDX, RSI 
CMOVO RBX, RSI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -77 # instrumentation
CMOVNB BX, SI 
SBB CL, 18 
AND RSI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RSI] 
SUB DIL, -92 
AND RDI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -43 # instrumentation
CMOVB RCX, RSI 
LEA RDI, qword ptr [RDI + RAX + 21015] 
DEC AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 29 
MOVSX ECX, DI 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
