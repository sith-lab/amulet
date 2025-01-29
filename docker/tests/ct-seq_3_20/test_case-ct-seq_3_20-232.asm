.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DI 
MOVSX CX, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
SUB CX, -95 
CMOVB ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], -105 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -121 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 66 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 98 # instrumentation
ADC CX, SI 
AND RDX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -63 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 58 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RSI] 
MOVSX EBX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
