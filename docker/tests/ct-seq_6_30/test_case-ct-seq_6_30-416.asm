.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 99 
CMOVNLE EDX, ESI 
SBB SI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 119 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
ADC AX, 19714 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 0 
ADC CL, -39 
SUB RAX, 1377600890 
CMOVNBE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 69 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
XCHG BL, AL 
ADD RAX, 955579173 
CMOVNZ RCX, RBX 
SBB AL, 10 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
CMOVNLE SI, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -110 
SBB AX, 13846 
XCHG SI, AX 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -58 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
