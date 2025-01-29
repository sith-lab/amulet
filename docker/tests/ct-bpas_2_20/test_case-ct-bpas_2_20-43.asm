.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RBX, 8670987615314730337 
MOVZX RDI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDX] 
CMOVNL RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], AX 
ADC CL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 2 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], CX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], DX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
MUL EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
