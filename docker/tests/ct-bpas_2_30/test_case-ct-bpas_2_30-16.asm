.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC CL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 17 
CMOVNLE ESI, ECX 
CMOVS ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDX] 
ADD AL, -47 
ADC ESI, 52 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
CMOVB EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
DEC CX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -60 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 2 
CMOVL RSI, RSI 
CMP DL, CL 
CMOVL RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
MUL ESI 
MOVSX EAX, DL 
ADD EAX, 912823984 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 37 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
MOVSX ECX, BL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RSI] 
DEC ECX 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
