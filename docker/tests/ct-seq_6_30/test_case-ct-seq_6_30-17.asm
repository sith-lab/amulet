.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -11 # instrumentation
CMOVP ESI, EDI 
SBB SI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RCX] 
IMUL RAX, RBX 
JMP .bb_main.1 
.bb_main.1:
ADD AX, -128 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
CMP BL, SIL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
IMUL DI, DI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 31 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
ADD SIL, 29 # instrumentation
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
XCHG RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], AX 
MOV DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
SUB BL, 111 
MUL DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX], -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
