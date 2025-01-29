.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RCX 
LEA EBX, qword ptr [RAX + RAX + 28459] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ESI 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
SBB DL, AL 
CMOVL BX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RCX 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RSI, AX 
XCHG CL, DL 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
MOV DIL, DIL 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR DX, 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -87 
XCHG RDI, RAX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 11 
SBB AX, SI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
JMP .bb_main.4 
.bb_main.4:
MOVZX EAX, BL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 90 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 109 
MOVZX ECX, DL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 61 
SUB AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
