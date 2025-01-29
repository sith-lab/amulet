.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RAX 
MUL RDX 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 71 
CMOVB RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
ADC EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 92 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
XCHG BX, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
MOV DL, DL 
ADC RBX, RDI 
CMOVNZ EBX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
