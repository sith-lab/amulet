.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 45 # instrumentation
CMOVO RBX, RDI 
SBB AX, 32624 
CMOVS RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RSI] 
CMOVB RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 51 
SBB BL, AL 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], SI 
CMOVBE EBX, ESI 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 21 # instrumentation
CMOVS CX, DI 
MUL BX 
MOVSX CX, AL 
SBB EAX, 48 
CMOVNP EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RAX 
MOVSX RSI, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
IMUL AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -57 
INC CL 
CLC  
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD RDX, 110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
