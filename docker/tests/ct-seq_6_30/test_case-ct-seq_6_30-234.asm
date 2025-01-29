.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DL, -105 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
ADC CX, 84 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 4 
XCHG CX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -36 
XCHG CX, AX 
INC CL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
CLD  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
MOVZX SI, BL 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 31666 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
SBB RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
INC EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RSI] 
ADD AX, 8913 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
CMOVLE RSI, RAX 
JMP .bb_main.5 
.bb_main.5:
INC DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RSI] 
MOVSX AX, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
