.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
CMOVNP EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDX 
SUB AL, SIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -89 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -49 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
CMP RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDX] 
CMC  
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
SUB DIL, DL 
SUB RAX, -1952428399 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
MOVZX BX, BL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -57 
ADC RAX, RAX 
SBB ESI, EAX 
MOV EDI, 2129749421 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -13 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
