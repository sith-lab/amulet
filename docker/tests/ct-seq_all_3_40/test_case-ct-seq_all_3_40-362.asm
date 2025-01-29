.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CX, BX, 122 
NEG DIL 
IMUL EDX, EAX, 75 
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
SBB DL, BL 
SETS BL 
CMOVP ECX, EBX 
CMPXCHG RAX, RSI 
CMOVNZ RSI, RCX 
CMOVZ RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], ECX 
CMOVL SI, DI 
CMOVS RAX, RDX 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL RDI, RSI, 116 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RDI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RBX 
CMOVO DI, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -12 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
MOV EDI, 1440911143 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -37 
XOR AX, 24332 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -127 
AND AL, 86 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
CMOVO SI, AX 
CMOVBE RDI, RAX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
CMP AL, BL 
SUB AX, -5 
ADD BL, CL 
ADD EAX, -441582643 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
NEG EBX 
XOR RAX, -1012510979 
CMOVP BX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 49 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
