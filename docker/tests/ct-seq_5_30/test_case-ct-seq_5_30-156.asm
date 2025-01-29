.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -28 
ADC SIL, -87 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 86 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
CMOVS CX, CX 
CWDE  
DEC AX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
CMOVNP RAX, RBX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 40 # instrumentation
LEA AX, qword ptr [RCX + RCX + 52304] 
CMOVNBE EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
SUB BX, 123 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
ADD DIL, -50 # instrumentation
SBB EAX, -669230236 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX CX, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DIL 
ADC AX, -15196 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
