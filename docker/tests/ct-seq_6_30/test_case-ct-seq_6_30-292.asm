.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
ADD AX, -17954 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -11 
SUB DIL, -34 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RAX 
ADC RBX, RAX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -110 # instrumentation
CMOVNP ECX, EDI 
CMOVNBE AX, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
ADC RDI, 124 
XCHG EDX, EAX 
CMP RAX, -69305567 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
NEG AL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
CMOVS CX, SI 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
SBB EBX, 22 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -16 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 16 # instrumentation
CMOVNO EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 115 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ECX 
ADC SI, -97 
SUB SIL, 5 
CMOVBE ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
