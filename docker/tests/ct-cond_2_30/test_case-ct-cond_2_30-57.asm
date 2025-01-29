.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
SBB BL, -4 
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 100 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RAX] 
CMP BL, 20 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RSI] 
MOVSX AX, AL 
CMP RAX, 1724806213 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL RCX 
LEA SI, qword ptr [RBX + RAX] 
CMP SIL, 56 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
NEG BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], AL 
SUB AX, -14277 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -30 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
ADD EAX, EDX 
MOVSX SI, CL 
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
OR DL, 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
