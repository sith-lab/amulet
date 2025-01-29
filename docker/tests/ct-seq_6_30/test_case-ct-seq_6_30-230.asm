.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -20 
MOVSX EDI, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RSI] 
INC DL 
MOVZX RSI, DIL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
ADD SIL, 32 # instrumentation
CMOVZ EDX, ESI 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVZX RDX, SI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
CMOVL RCX, RDX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDI] 
CMOVS CX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -109 
MUL DI 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 95 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -5 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
CWD  
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 106 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
CMOVP ECX, EDI 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
MOVSX DI, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
