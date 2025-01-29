.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -91 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -20 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -36 # instrumentation
SBB BL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
SUB EAX, -29348520 
AND RAX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RAX] 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
CMOVS CX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RAX 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 84 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 19 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -60 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
