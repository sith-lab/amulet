.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
CMOVNL ESI, ESI 
ADD DL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
CMOVLE RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDX 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RAX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 58 
LEA AX, qword ptr [RAX + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX], 4 
CMOVO DX, AX 
ADD BL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -20771 
MUL RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
