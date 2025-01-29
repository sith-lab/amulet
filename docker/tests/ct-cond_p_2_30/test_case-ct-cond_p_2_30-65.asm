.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
XCHG DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
ADD DX, 37 
SBB AX, -21888 
SBB DIL, 105 
AND RSI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RSI] 
SUB DX, 57 
XCHG DX, AX 
SUB AL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
CMP RSI, 103 
CMOVLE EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
ADC ESI, -82 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 94 
CMOVNL ESI, ECX 
CWDE  
CMOVNB DI, DI 
CMOVNS RCX, RCX 
CMOVL EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
CMOVP DX, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RBX] 
XCHG RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
