.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RBX 
ADC RSI, RDI 
LAHF  
MOVSX CX, BL 
SBB EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
MOVSX RSI, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 685397318 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 18 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], SIL 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 28 # instrumentation
ADC AL, -15 
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
MOV EDX, ESI 
SBB AX, -26498 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP BL, AL 
INC CX 
BSWAP RDI 
ADD EAX, 1817841891 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RAX] 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
