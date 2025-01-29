.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RCX 
SBB RAX, -118 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 0 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -28 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 43 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -49 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RAX] 
CMOVB CX, AX 
AND RDI, 0b1111111111111 # instrumentation
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 104 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 72 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
ADD SIL, -74 # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
