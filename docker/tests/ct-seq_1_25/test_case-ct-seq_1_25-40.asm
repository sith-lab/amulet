.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], CX 
MOV CL, AL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -44 
ADC AX, 27599 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
CMP RDX, 79 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -350187575 
CMOVNZ DX, AX 
AND RBX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RBX] 
SBB EAX, 0 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
CMOVNBE AX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDX] 
MOV DX, 12293 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 28 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -119 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
