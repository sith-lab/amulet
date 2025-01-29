.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 63 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -74 
MOV ESI, 360529805 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
NEG EBX 
ADC RAX, 541595762 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
LEA EDX, qword ptr [RAX + RBX + 16606] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ESI 
MOVSX DX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP RAX, 1415197188 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
XCHG DL, BL 
MOV EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
