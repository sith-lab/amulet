.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RCX, RCX, -86 
MOVZX BX, AL 
OR DIL, 116 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
MOV DIL, -49 
MOV RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], DL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RCX] 
CMOVO ESI, EBX 
XCHG EBX, EDI 
OR CL, 123 
AND EAX, 12994658 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
MOVSX SI, DIL 
JMP .bb_main.2 
.bb_main.2:
XADD EDX, EBX 
SUB CL, 73 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
CMOVL EDX, EBX 
XOR AX, -17483 
SETNZ CL 
SETO BL 
MOVZX EAX, CL 
CMOVNZ ECX, EAX 
MOV CX, DI 
XCHG SIL, CL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
LEA DX, qword ptr [RDX + RDI + 50854] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
SETNP SIL 
SBB DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -66 
CMOVL DI, BX 
CMOVB SI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CWDE  
CMOVNS CX, SI 
SETNB CL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RCX 
MUL RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
