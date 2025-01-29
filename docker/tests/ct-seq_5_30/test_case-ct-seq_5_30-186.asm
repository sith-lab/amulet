.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
MOV RSI, RSI 
MUL CL 
ADC DI, SI 
JMP .bb_main.1 
.bb_main.1:
SUB RDX, 91 
IMUL RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 67 
LEA CX, qword ptr [RDX + RCX] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
STC  
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 85 # instrumentation
MOVZX AX, AL 
CMOVNL CX, AX 
CMOVZ ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
CMOVS EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDI] 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
CMOVNLE EBX, ESI 
MOV ESI, 124726627 
CMP EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
