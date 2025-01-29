.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 2074770712 
TEST BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
XOR EDX, ESI 
TEST RCX, RDI 
TEST CL, AL 
CMOVNS RDX, RSI 
INC DIL 
ADC RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
BSWAP RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], DL 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
DEC EBX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], ECX 
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RBX] 
OR RAX, 1812560558 
CLC  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], SIL 
CMOVNS EBX, EDI 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
ADD RAX, 965279315 
ADC RDX, 11 
ADD AX, 22190 
TEST AL, 110 
XCHG BL, CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX] 
ADC ESI, -125 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
