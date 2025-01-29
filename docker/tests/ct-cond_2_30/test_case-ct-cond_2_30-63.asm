.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ECX 
BSWAP ESI 
AND RDX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 89 
ADC EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
ADD AX, -11839 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 72 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
IMUL RSI, RAX, -57 
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
CLD  
ADD DL, -66 
SUB RSI, 108 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RCX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -44 
CMOVNZ EDX, EBX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RSI] 
XCHG AL, SIL 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RCX] 
ADC RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 23 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RBX] 
ADC RAX, 1386504621 
MOVSX RBX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
