.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOVSX EDX, AX 
AND RAX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DIL 
SETNBE BL 
DEC BL 
CMOVNB ECX, EDI 
AND AL, -90 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
XCHG RBX, RAX 
CMP CL, DL 
CMOVP BX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RCX], RDI 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR BL, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
SBB CL, 115 
AND RDI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDI] 
CMOVP RBX, RAX 
MOVSX EDX, AX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], CL 
ADD DX, -122 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
IMUL SI, AX, -90 
XADD AL, DL 
IMUL DX, SI, 45 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
DEC DIL 
CMP EDX, -27 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], ECX 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDI] 
OR AX, 28 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
SETZ DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
