.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RBX] 
CMP SIL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
MOVZX AX, AL 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 58 # instrumentation
CBW  
ADC RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
ADD EAX, 1018706135 
CMP CL, -17 
MUL DL 
JMP .bb_main.3 
.bb_main.3:
IMUL SI, DI, -120 
IMUL EDX, EBX, -82 
ADC AX, -30331 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RBX] 
ADC RDI, RSI 
ADD EDX, -68 
CMOVL EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
MOVZX EDX, DIL 
MUL AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -62 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
