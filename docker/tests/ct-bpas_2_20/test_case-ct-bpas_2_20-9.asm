.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 53 
ADD DL, CL 
MOVZX RAX, AL 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
SBB SIL, -89 
CMOVNZ SI, DI 
CMOVS ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1070564042 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 60 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
MOVSX SI, AL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -23 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
