.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
CMOVS EDI, EAX 
ADD EAX, -479954151 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVZX DX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], SI 
CMP EAX, 1634302276 
MOVZX EAX, DL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -122 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 31 
AND RAX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1208558354 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
JMP .bb_main.3 
.bb_main.3:
XCHG CX, AX 
MOVZX RDX, AL 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ECX 
NEG DX 
JMP .bb_main.4 
.bb_main.4:
SUB RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
