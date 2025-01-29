.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -110 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADC SIL, CL 
IMUL DI, DI, 3 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 63 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RCX] 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -128 
CWD  
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 24 # instrumentation
CMOVO EBX, ECX 
CMP EAX, 851311327 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ECX 
CMP ESI, 5 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
