.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 6 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
XCHG DL, AL 
CMOVNO DX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
SBB EAX, -1298124905 
SUB RSI, -122 
CMOVS RBX, RBX 
CMOVLE RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -59 
SBB RDI, 49 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
SBB EAX, -1371938935 
CMOVB AX, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RCX] 
CMOVNLE EBX, EDX 
SBB RAX, -1494578963 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
