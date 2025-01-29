.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RCX, RDI 
XCHG DL, BL 
CMOVNBE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
JL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
CLC  
SUB RDX, 53 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
ADD DIL, -49 # instrumentation
CMOVNLE RSI, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
SUB RDX, -97 
IMUL RCX, RAX, -24 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RSI] 
CMP SI, 32 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 44 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RAX] 
MOVZX CX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 55 
SBB ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
MOVZX EDX, BX 
LEA RDX, qword ptr [RSI + RBX + 27377] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
CMP BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
