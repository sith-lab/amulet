.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AL, -49 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
ADD SIL, 10 # instrumentation
SBB EAX, -675468926 
XCHG AX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
JMP .bb_main.2 
.bb_main.2:
CMP BL, -127 
DEC DL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DIL 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 820063751 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
CMOVP ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
