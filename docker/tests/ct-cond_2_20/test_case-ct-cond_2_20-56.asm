.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RDX, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -45 
CMOVNL SI, DX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 68 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -23 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], SIL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 109 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CDQ  
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -53 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
