.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA EBX, qword ptr [RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 121 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
XCHG EDX, EBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 24 
CMP RAX, 940125531 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 91 
AND RDI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -32 # instrumentation
ADC EDX, EDI 
CMOVNP EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
MOV EAX, 621252606 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
IMUL EDX, ESI, -13 
ADD DIL, -115 # instrumentation
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -73 
CBW  
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
SUB RAX, -680749662 
NEG SIL 
MOV AX, BX 
NEG ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RBX 
MUL RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
