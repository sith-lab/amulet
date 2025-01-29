.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], CL 
ADD AL, -48 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
XCHG CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
OR DIL, DL 
TEST RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], -52 
CMOVNZ EDX, ESI 
ADC DIL, 65 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST ECX, EDX 
CMOVNZ EAX, ESI 
SBB EDI, 13 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 30948 
SBB DIL, 38 
MUL RCX 
CWDE  
STC  
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], -6657 
ADD BL, CL 
MUL BX 
SUB EAX, 94506257 
CMP RSI, RDI 
SETNBE DL 
SETL CL 
NEG EDI 
MOVZX EDX, DI 
SETBE CL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], BL 
SUB EBX, EBX 
NEG BL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], BX 
CMOVNBE RAX, RDI 
SUB RDI, -30 
IMUL DX, SI 
SUB DL, -107 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
