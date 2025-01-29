.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
IMUL EAX 
NEG DX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
CMOVNLE ESI, EDX 
MOVSX ESI, SI 
JMP .bb_main.2 
.bb_main.2:
ADD RAX, 113 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
MOVSX DX, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
CMOVNBE RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
ADD SIL, 119 # instrumentation
CMOVBE EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 91 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -61 # instrumentation
CMOVL RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
MOVZX DI, DL 
ADD EBX, 75 
JMP .bb_main.4 
.bb_main.4:
IMUL EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 292099556 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
