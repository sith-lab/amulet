.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -19 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], SIL 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ECX 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -29 # instrumentation
MOV CL, CL 
CMOVB ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
CMOVNL EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
