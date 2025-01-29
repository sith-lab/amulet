.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
SAHF  
XCHG CL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RSI] 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
CMOVNZ EAX, EBX 
CWDE  
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -9344 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDX] 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -108 
MOV DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], CX 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -113 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -112 
CMOVL BX, AX 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
MUL DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
