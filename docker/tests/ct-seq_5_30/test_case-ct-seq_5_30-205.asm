.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -87 # instrumentation
CMOVBE ECX, EDI 
SBB RAX, RCX 
MOVSX EDI, AL 
ADD AL, 30 
IMUL RSI, RCX, -49 
ADD SIL, 38 # instrumentation
CMOVS RAX, RDX 
SUB AX, CX 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 49 
CMOVS SI, SI 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -30 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], SI 
MUL AL 
ADD SIL, -68 # instrumentation
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 34 # instrumentation
SBB CL, 103 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 110 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
SUB RSI, 11 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP EAX, -1732419971 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
ADD ESI, EAX 
MOVZX RDX, AL 
AND RCX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RCX] 
SUB AL, -21 
DEC EDI 
CMP CL, -78 
CMOVS SI, CX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
