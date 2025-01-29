.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, -78 
IMUL RBX, RDI, 101 
ADD CL, AL 
SUB CL, 0 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
SUB SI, 63 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
NEG DL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -73 
XCHG ESI, EAX 
CMOVP RCX, RDX 
SETZ SIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -58 # instrumentation
CMOVZ EBX, ECX 
CMOVNS SI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 21 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
CMOVB EDI, EDX 
SBB DL, DL 
ADD EAX, -1919443906 
TEST DI, 21328 
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RAX, -50187962 
SBB RBX, -44 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RDI 
CMOVL DI, SI 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD EAX, -60 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
ADD SIL, -55 # instrumentation
CMOVP BX, BX 
ADD RSI, 74 
SUB CX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
SUB AL, 4 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
SUB RAX, 94549097 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
