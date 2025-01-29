.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMOVNZ EDX, EBX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -114 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 2 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], CX 
JMP .bb_main.2 
.bb_main.2:
ADD EAX, -1649824419 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
CMP RAX, -81352566 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 87 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
