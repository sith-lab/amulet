.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DIL 
CMOVNZ SI, AX 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDX] 
SBB AL, -111 
ADD RSI, RDX 
CMOVNB EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -125 
CDQ  
MUL RDX 
ADC EDI, EDI 
SUB ECX, EDX 
DEC AL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 951207315 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
MOVZX ECX, CL 
XCHG ESI, EAX 
NEG AL 
MOVSX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -104 
CMOVS RCX, RBX 
ADC AL, -128 
AND RBX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDX] 
CMOVZ EAX, EBX 
SUB CL, 125 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
