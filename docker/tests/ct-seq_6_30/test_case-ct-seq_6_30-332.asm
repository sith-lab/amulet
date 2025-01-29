.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
CMOVB EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -103 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], AL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
CMOVNS RCX, RDX 
ADD RBX, 60 
CMOVNL DX, AX 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX], 4 
ADD RBX, RSI 
NEG BL 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RBX] 
ADD CL, 2 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDI 
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -111 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
XCHG RCX, RAX 
CLC  
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
SUB AX, -11024 
AND RBX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RBX] 
MUL ECX 
ADD DIL, -83 # instrumentation
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -11 # instrumentation
CMOVB BX, BX 
MOVZX ECX, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], BX 
MOVSX RBX, SIL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
