.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 85 
ADD RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
SUB AL, 83 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 67 
ADC DIL, -41 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 84 
CMOVNLE ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
INC CL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 448799866 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
