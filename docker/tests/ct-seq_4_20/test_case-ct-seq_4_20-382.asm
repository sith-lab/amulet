.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDX, SI 
ADD CL, AL 
BSWAP RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -68 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -104 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 20 
ADD ESI, -73 
DEC DI 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 21 # instrumentation
ADC EAX, -2099615676 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RCX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
SUB EAX, -70 
XCHG ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
