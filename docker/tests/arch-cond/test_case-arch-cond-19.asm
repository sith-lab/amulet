.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DL, 1 # instrumentation
CMOVNZ DI, BX 
IMUL DI, BX 
AND RAX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
CMOVLE RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
SETNO BL 
CMOVNBE RSI, RAX 
SETNP DIL 
CMOVNLE RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -54 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -118 # instrumentation
ADC DL, BL 
MOVZX EBX, CL 
BSWAP EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -73 # instrumentation
CMOVBE CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 66 
XOR DX, CX 
XCHG EBX, EAX 
CMOVNP EDI, EAX 
TEST EAX, -235344258 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RAX 
SUB RDI, RBX 
ADC AX, 12464 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
ADC DL, SIL 
MOV RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
CMP DIL, 25 
ADD DIL, DIL 
CMOVNB SI, CX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], DIL 
CMOVNB AX, SI 
ADD EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
IMUL CX, AX 
ADD SIL, 12 # instrumentation
CMOVNBE RBX, RDI 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
