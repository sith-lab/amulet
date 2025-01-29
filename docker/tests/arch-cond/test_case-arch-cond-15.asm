.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 109 # instrumentation
SETZ AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -108 
TEST AL, -87 
CMOVNB RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
SETNZ CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
SETNB DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -117 
CMP RDI, 35 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
CMOVP RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
CMP AL, 43 
CMP RAX, 2115398914 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
CMOVL RCX, RCX 
AND AX, -82 
CMP SIL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 98 
SETNS BL 
CMOVNB EDX, EBX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 118 # instrumentation
SETL DL 
CMOVNZ RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -658138067 
CMP CX, -21 
CMOVNBE RDI, RDI 
XADD EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EDX 
NOT BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RBX] 
SETS DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], AX 
OR AX, -79 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
