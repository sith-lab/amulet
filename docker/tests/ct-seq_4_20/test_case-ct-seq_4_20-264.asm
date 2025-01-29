.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDX 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -43 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1488566382 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RBX] 
SUB DL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], AX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX], -26 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
CMOVBE EAX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
