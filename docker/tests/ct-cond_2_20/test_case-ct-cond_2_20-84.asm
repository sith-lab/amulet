.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
SUB BX, -20 
CMOVL CX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
MOV AL, DL 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
ADC AX, 102 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 112 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 30 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -26 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI] 
ADD EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
