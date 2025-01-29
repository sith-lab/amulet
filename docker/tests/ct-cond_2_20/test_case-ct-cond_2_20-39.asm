.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX DI, CL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -86 
CMOVNO EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], 14 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 36 
AND RDI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -120 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
INC RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 116 
ADD RSI, RSI 
CMOVS RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
SUB ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
