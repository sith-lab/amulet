.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EDX, -12 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, ESI 
CMOVNB DX, DI 
OR AX, -22790 
JMP .bb_main.1 
.bb_main.1:
XADD EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 97 
SETS DL 
SBB CX, CX 
XCHG ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], DX 
SBB RSI, -70 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB BL, 65 
XADD CL, CL 
MOV EDX, 17892408 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
XADD EDX, ESI 
CMOVLE RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -7414 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
SETNLE CL 
AND RBX, -14 
CWD  
XADD SI, CX 
OR ESI, -99 
MOV RDX, -1962083690568019340 
SAHF  
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX AX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
AND RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DIL 
DEC BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
AND RAX, 84 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], SI 
SUB DL, DL 
ADC BL, 62 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
