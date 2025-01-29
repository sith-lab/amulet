.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
ADD EAX, 527644318 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 77 
JMP .bb_main.1 
.bb_main.1:
ADD DL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
CMOVNZ CX, AX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV ECX, EDI 
MOVSX RBX, DL 
AND RDX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
