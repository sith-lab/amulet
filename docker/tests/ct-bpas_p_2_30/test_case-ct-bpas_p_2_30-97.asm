.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
SUB EAX, -1827190249 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
ADD DX, CX 
CMOVLE EDI, ECX 
SUB EBX, 104 
SBB AX, -11598 
MOV DI, SI 
MOVZX DI, AL 
CMOVL CX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
ADC BL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -126 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
CMOVB RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -103 # instrumentation
CMOVNL SI, CX 
XCHG CX, AX 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 83 
AND RAX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
ADD EAX, 404993139 
CMOVS CX, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 1272849180 
MOVZX EDX, AL 
CMP EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
