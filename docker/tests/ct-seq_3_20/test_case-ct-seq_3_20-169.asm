.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
XCHG DL, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -68 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
ADC AX, 63 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
SUB AL, 72 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
NEG BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDX 
SBB BL, 58 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
MOVZX CX, AL 
SBB BL, DL 
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
