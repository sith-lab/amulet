.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RBX, RSI 
CMOVNL RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RSI] 
MOV EDI, EAX 
SAHF  
CMOVLE EBX, EDX 
ADD AX, CX 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
MOVZX CX, DL 
ADC DX, SI 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDX 
CMP BL, -98 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -115 
SBB CL, -92 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
ADC RAX, 1461340596 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
INC DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
