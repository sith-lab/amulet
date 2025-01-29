.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RAX] 
MOV SI, 12067 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 2133216983 
ADD AL, -12 
CMOVO RCX, RCX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
MOVZX RBX, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DIL 
CMOVLE RSI, RCX 
JO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
MOV DL, 63 
CMP ESI, 59 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -123 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
MOVSX EAX, BX 
MOVZX RAX, AL 
ADD BL, DL 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RBX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 129394813 
MOV DI, 32313 
LEA RDI, qword ptr [RCX + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 2034818937 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
