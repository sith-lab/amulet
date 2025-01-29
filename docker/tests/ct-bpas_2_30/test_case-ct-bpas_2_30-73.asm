.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -121 # instrumentation
CMOVNZ RDX, RSI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
ADC RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
ADC RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
CMOVNBE DX, CX 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB BX, SI 
MOVSX EAX, AL 
SUB DX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -34 
CMOVL EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
CMOVNO CX, CX 
MOVZX ESI, BL 
ADC EAX, EAX 
SBB ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 61 
NEG BL 
SBB EAX, 109 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
MOVSX ESI, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
ADC AL, -25 
CMOVL BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
