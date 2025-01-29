.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -17 
NEG SI 
CMOVB ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
MOVZX ESI, DX 
CMOVNLE EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDX 
ADD RAX, -973352011 
IMUL RDX, RCX, 48 
MOV RAX, RCX 
IMUL AX, DI, -91 
ADC RAX, 862603044 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA CX, qword ptr [RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
LEA RDI, qword ptr [RAX + RCX] 
ADC RAX, -274269041 
CMOVS SI, AX 
ADC DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
MOVZX RDX, AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
ADC RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 60 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 109 
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
