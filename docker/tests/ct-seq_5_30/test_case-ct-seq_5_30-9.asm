.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
ADC RAX, 1559468458 
STC  
CMOVO CX, SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RSI] 
INC SI 
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
JB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 106 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
ADC EAX, -877804687 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -26 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDX] 
DEC BX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 62 # instrumentation
ADC EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDI 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX EAX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDX] 
SBB EAX, 1403193748 
CLC  
ADC CX, DI 
CMP RDX, 94 
CMOVP DI, AX 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
INC RDI 
NEG AX 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
