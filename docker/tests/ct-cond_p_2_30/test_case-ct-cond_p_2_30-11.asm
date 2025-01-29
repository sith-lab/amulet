.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
LEA BX, qword ptr [RBX + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], AX 
SBB EBX, 52 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 51 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -102 # instrumentation
MOVZX EAX, SI 
CMOVNZ DX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -88 
SBB DX, CX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
XCHG RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RSI] 
CMP RAX, 672990902 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RAX] 
MOVSX SI, AL 
ADC DI, -3 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -53 
SBB EAX, -1402466423 
ADD RAX, -326862623 
ADC DL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
