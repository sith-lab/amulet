.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
CMOVS EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDI] 
SBB AX, CX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -27350428 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
MOV EAX, 242743135 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
SUB SIL, -56 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDX 
XCHG CL, AL 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RBX] 
XCHG RCX, RAX 
CMOVNB RSI, RAX 
CMOVLE ECX, EDI 
ADD DIL, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
