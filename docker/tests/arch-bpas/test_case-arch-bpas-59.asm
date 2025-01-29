.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDI, RBX 
CMOVL RAX, RAX 
INC AL 
INC DL 
CMOVP RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
SETZ CL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
CMOVNL EDI, EDI 
ADC EDX, 122 
XOR AL, 107 
ADD DIL, -127 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
NOT AX 
CMP RAX, -1482477747 
SUB AL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RSI 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLD  # instrumentation
ADD DIL, -53 # instrumentation
SBB EAX, 1997752881 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
ADC RAX, RBX 
SETP CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
XADD AX, DX 
SETNP DL 
SETBE AL 
AND DX, DI 
ADC AX, -24562 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
CMP DL, BL 
IMUL DX 
AND RSI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RSI] 
ADD BX, 6 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
XCHG RAX, RDI 
SBB EDI, ESI 
LEA SI, qword ptr [RBX + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
