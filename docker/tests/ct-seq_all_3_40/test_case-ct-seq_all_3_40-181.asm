.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -31 
ADD DIL, -102 # instrumentation
LAHF  
TEST AX, -23214 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 65 
MOVSX EDX, CL 
INC SI 
XCHG CX, BX 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
CMOVL BX, SI 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
MOVZX EBX, DL 
SBB BL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], 81 
ADD AL, 3 
SBB DIL, 52 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], SIL 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
OR RAX, -1198319798 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RDX 
CMOVB EAX, EBX 
IMUL EAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
ADD SIL, -99 # instrumentation
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RSI], ESI 
ADC EAX, -1673988111 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
TEST AX, -10015 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], -30 
CMP DI, -24 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 44 
AND AL, 48 
MOV ECX, -765084447 
XOR CL, DL 
OR EAX, ECX 
CMOVNB CX, BX 
XCHG CL, DL 
CMOVNL RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
