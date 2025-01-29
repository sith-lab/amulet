.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 87 # instrumentation
CLC  
CMOVNBE BX, SI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
CWD  
AND RBX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
CMOVZ RDI, RAX 
MOVSX DI, DL 
CMOVP EBX, ESI 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RBX] 
SUB ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RCX] 
JZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
NEG DL 
NEG EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDI 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -23 # instrumentation
CMOVBE RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
CMOVS RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
CMP RAX, 1120601667 
ADC AL, 15 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX] 
ADD AX, -11 
MOV SI, -5252 
NEG CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
