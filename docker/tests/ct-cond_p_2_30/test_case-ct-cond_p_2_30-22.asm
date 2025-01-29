.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 102 # instrumentation
CMOVNP AX, SI 
BSWAP RBX 
ADC DL, AL 
MOVSX CX, DL 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], BX 
CMP AX, -20972 
ADD DX, -41 
ADC DL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
CMP EAX, EBX 
CMOVNP RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
CMOVNBE DX, DX 
ADD AL, -51 
SUB DL, CL 
SBB ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
SUB AL, DIL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 120 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 3 
CWD  
ADC RAX, -236043534 
CMP RDX, 87 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
