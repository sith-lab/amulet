.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
CMOVS AX, CX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 104 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -127 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
MOVZX EDI, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX], 20 
AND RDI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ESI 
CMOVNS DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
