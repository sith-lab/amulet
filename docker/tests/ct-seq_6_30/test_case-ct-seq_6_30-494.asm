.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
SUB RAX, -555786602 
ADD AX, 5608 
LEA RCX, qword ptr [RDX + RDI] 
ADD EAX, 770207116 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDI] 
DEC RDI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
MOVZX RDX, DI 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -57 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 63 # instrumentation
SBB AX, 48 
CMP AL, DL 
IMUL RDX, RSI, -121 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
CMOVNS EDX, EDI 
XCHG RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RCX] 
XCHG RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RCX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -101 # instrumentation
MOVZX BX, SIL 
CMOVP RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDX] 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
MOVSX EDX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
