.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -48 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 40 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RDI] 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 76 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 87 
CMOVLE EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDX] 
CWDE  
JRCXZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 26 
IMUL EDX, EDX, -10 
ADD SIL, 50 # instrumentation
CMOVNO ECX, EDX 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMP AL, -103 
IMUL CX 
CMOVO DI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -1 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
ADC DI, AX 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 71 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 97 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
