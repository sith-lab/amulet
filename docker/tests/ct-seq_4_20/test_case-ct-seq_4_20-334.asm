.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
ADD DIL, 9 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RSI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RCX] 
ADD SIL, -120 # instrumentation
CMOVLE RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -19 
JMP .bb_main.2 
.bb_main.2:
CMP SI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], 7 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RAX] 
CMOVNB EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RAX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CLD  
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
