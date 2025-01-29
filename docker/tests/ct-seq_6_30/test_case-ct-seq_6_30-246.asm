.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DX, DL 
AND RAX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -24 
CMOVNP EDX, EDI 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
ADD RCX, -49 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -103 
CMOVNBE EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
ADD DIL, 93 # instrumentation
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -51 # instrumentation
CMOVL RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
JNZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -10 
ADC EAX, ECX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -114 
CMOVNZ RBX, RSI 
XCHG CL, AL 
CMOVBE AX, AX 
ADD DL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], SIL 
CMOVNL EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
SBB AL, -118 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 54 # instrumentation
ADC ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
CMOVNBE AX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
