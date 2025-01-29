.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RAX] 
MOVSX EDI, BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -115 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
JNO .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
CBW  
MOVSX ESI, BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
STD  
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -6 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDX 
JMP .bb_main.2 
.bb_main.2:
SUB BX, -61 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], SIL 
CMOVNL EAX, EAX 
JMP .bb_main.3 
.bb_main.3:
MOVZX AX, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RSI] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB RCX, RBX 
MUL RDX 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 4 # instrumentation
CMOVNL AX, CX 
CMOVB RBX, RCX 
SUB EAX, -624362741 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
ADD SIL, 9 # instrumentation
CMOVNL RBX, RCX 
CMOVNBE ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
