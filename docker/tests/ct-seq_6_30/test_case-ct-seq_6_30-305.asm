.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EDX 
CMOVZ EDI, EDX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL CX, SI, 101 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
CWD  
SUB AL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RAX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -127 # instrumentation
CMOVZ DX, DX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
CMP RAX, -165014999 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
CMOVLE EDI, EAX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
ADD AL, 117 
CMOVNP RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ECX 
XCHG CL, DL 
JS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
CWDE  
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
JMP .bb_main.5 
.bb_main.5:
SUB RDX, -36 
CMOVNO RCX, RDI 
ADD CX, 65 
MOV RDI, RDI 
CMOVNL SI, AX 
ADD AX, -18163 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
