.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -81 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
ADD EDX, 56 
CMOVNZ EBX, EDX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVSX ECX, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
CMOVB RDX, RBX 
MOVSX EAX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RCX] 
SBB RCX, RSI 
CMOVZ RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
SUB RCX, -30 
JMP .bb_main.2 
.bb_main.2:
CDQ  
SUB BL, -1 
CMOVB DX, DX 
CMOVO SI, DX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 120 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -15 # instrumentation
LEA RAX, qword ptr [RBX + RAX + 6218] 
SBB AL, -67 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], AX 
CMOVLE EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RCX] 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -87 # instrumentation
CMOVB EDI, EDX 
LAHF  
XCHG EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
CMOVS RSI, RDX 
SUB EAX, 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
