.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
ADD BL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RCX 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -28 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDX 
MOV RCX, -1512997219662844496 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
MOVZX AX, DL 
ADC AX, -19320 
CMOVS RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -123 
CBW  
CMOVNB EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
