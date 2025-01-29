.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RSI] 
MOV DL, AL 
CMOVBE EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -60 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -55 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD AL, -19 
SUB AX, 28244 
AND RDX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDX] 
XCHG RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
CMOVB BX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RSI] 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -114 # instrumentation
SBB CL, -72 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
CMP EAX, -1677201294 
SUB BX, 32 
JMP .bb_main.4 
.bb_main.4:
CWDE  
XCHG RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -101 # instrumentation
ADC ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
SBB RDX, -16 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RAX] 
XCHG DIL, DIL 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
