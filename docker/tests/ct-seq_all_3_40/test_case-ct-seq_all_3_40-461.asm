.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT DL 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
OR SIL, DIL 
MOVZX RCX, DIL 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDX 
ADC RCX, 126 
SBB EDI, EDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 98 # instrumentation
DEC AL 
CMOVBE RAX, RDX 
AND AX, -11638 
OR DI, CX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
TEST ECX, 1107838195 
AND RDI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDI] 
XOR DIL, 91 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 65 # instrumentation
SETNL DL 
MOVZX BX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], DI 
CMOVLE ESI, EBX 
STC  
SETNLE DL 
XOR EDX, -64 
CMOVLE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
CMOVP RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RBX] 
ADC EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDX] 
MOV DIL, DL 
SETLE CL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
