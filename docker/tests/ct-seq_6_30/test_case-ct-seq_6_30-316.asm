.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -90 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
CMOVNB EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
MOVSX AX, BL 
SBB AX, -35 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
LEA EDI, qword ptr [RCX + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -17 
INC EBX 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
ADD DL, 44 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 7 
ADD RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
