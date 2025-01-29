.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
MOVSX RSI, AL 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 122 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -10 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RCX 
JMP .bb_main.2 
.bb_main.2:
NEG SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 99 
ADC CL, SIL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
ADC AX, -19 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
CMOVNBE ECX, EDI 
CMOVP SI, CX 
NEG ECX 
CWD  
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -36 # instrumentation
CMOVNP RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
CMOVP RCX, RCX 
CMP DL, 19 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 51 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 91 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
INC EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
MOV BX, AX 
CMOVB SI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
