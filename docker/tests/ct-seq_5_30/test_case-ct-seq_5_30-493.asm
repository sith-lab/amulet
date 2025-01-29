.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -77 # instrumentation
CMOVLE EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
CMOVNP RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
BSWAP RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RCX, -5 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
MOVZX EBX, DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
CMOVS SI, DI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
INC RSI 
JMP .bb_main.3 
.bb_main.3:
SUB CX, 94 
MOV EBX, ECX 
MOVZX BX, CL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
MOVZX SI, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 3 
ADC RCX, 26 
NEG CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 70 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, -86 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
LAHF  
CMOVNL RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
