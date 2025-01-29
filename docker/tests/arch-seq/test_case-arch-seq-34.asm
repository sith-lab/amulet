.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -80 # instrumentation
SETNBE CL 
ADC EAX, -762298873 
SETB AL 
ADC EDX, -18 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
ADD DIL, 32 # instrumentation
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RSI] 
XOR SIL, 86 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
ADD BX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
INC DL 
CMPXCHG CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
XOR EDI, -53 
JMP .bb_main.3 
.bb_main.3:
XADD BX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -26 
MOV RAX, RBX 
SETNP DL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], AL 
AND AX, -26869 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RAX] 
ADD SIL, -29 # instrumentation
JNB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
MOVSX RBX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], SIL 
OR EAX, -1299560491 
MOVSX DX, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
SETZ BL 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
MOVZX EAX, DX 
CMOVS EBX, ECX 
MOV AL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -64 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
SETP CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
