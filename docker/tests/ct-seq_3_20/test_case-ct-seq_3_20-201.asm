.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
SBB EAX, -1080926034 
SBB CL, 23 
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
ADD ECX, -27 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RAX 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
ADD DIL, -89 # instrumentation
CMOVLE EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -14 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
