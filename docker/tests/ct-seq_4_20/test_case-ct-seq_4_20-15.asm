.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RSI 
CMOVZ EBX, EDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -68 # instrumentation
MOVSX BX, AL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
IMUL RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 124 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RCX] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
MOVZX ESI, AL 
DEC ECX 
AND RSI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
