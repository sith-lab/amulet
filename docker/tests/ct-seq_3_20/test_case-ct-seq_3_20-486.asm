.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
CMOVNB EDI, EAX 
XCHG DL, BL 
SUB EAX, -384082755 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RCX] 
ADC EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 20 
SUB BL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
CMP AL, 43 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 24 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
