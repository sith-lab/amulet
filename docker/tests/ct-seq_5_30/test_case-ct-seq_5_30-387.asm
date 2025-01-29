.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -120 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
CMOVLE SI, SI 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
SUB CL, CL 
SBB BL, -15 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDX 
SBB DX, -41 
MOV CL, 101 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX DX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 127 
CMOVL DX, BX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDI] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -35 # instrumentation
SBB RDI, 11 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 102 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DX 
CMOVBE BX, AX 
ADC RBX, RBX 
ADC AL, -5 
CMOVNL RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], SIL 
AND RCX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RCX] 
CMOVL EAX, EDI 
CMOVNO SI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
