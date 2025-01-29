.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDX] 
MOVZX RAX, CX 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -59 # instrumentation
CMOVLE DX, BX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
CMOVL BX, CX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
SBB AL, -65 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
CMOVNP BX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -21 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
