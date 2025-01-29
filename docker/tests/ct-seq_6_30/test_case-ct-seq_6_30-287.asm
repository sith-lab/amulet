.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, -104 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX], 36 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
CMOVNP RDX, RSI 
JMP .bb_main.1 
.bb_main.1:
SUB AX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
IMUL DI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CLC  
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -121 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
IMUL RDI 
ADD SIL, -53 # instrumentation
MOVSX RDX, DIL 
JNP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, 113 # instrumentation
CMOVNLE EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD SIL, -55 # instrumentation
MOVSX DX, DIL 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB RSI, RCX 
CMOVNS RBX, RDI 
SUB RBX, RBX 
CMOVS SI, DI 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
CMOVLE SI, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -106 
DEC RSI 
SBB EAX, -194203345 
ADC RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
