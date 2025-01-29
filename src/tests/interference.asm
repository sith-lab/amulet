.intel_syntax noprefix
.test_case_enter:
LFENCE

# Get reference value into cache
AND rax, 0b111111000000 # Mask input addr to fit the sandbox
ADD rbx, rax
AND rbx, 0b111111000000
MOV rcx, qword ptr [r14 + rbx] # Some reference point in mem, determined by input
SUB rbx, rax
SAR rax, 5 # 0xffffffff -> 0x07ffffff (i.e. rax/32)
LFENCE

# Static delay (rbx is dependent on these)
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax - 1]

# Make interfered-with load and reference load
AND rbx, 0b111111000000 # A = rbx
# MOV rcx, qword ptr [r14 + rbx + 2176] # Interference target (Same cache set as reference)
LEA rbx, qword ptr [rbx + rax + 1] # Slightly delay the ref load so it's not on same issue cycle (avoid problems with pipelining)
LEA rbx, qword ptr [rbx + rax - 1]
AND rbx, 0b111111000000
MOV rcx, qword ptr [r14 + rbx] # Reference load (still delayed, but always delayed statically)
AND rdx, 0b1000000 # Set up i so it refs mem within sandbox

# Increase speculation window; Delay rsi
# Should also be able to act as intereference targets!
MOV rsi, qword ptr [r14 + rbx] # No upper bound to how long we can delay the branch cond. (MORE spec window!)

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 64]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 128]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 192]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 256]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 320]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 384]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 448]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 512]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 576]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 640]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 704]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 768]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 832]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 896]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 960]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 1024]

AND rsi, 0b1
ADD rsi, rbx
MOV rsi, qword ptr [r14 + rsi + 1088]

AND rsi, 0b1
AND rsi, 0b111111000000
# LEA rcx, qword ptr [r14 + rsi] # Using rdx instead to break dependence

# N = r14 (sandbox base), i = rdx (from input)
CMP rsi, 0 # Jump to .l1 if rcx != 0
JE .l1  # Misprediction (Assuming we mispredict)
.l0:
    # Dirty hack, breaks flag dependence of arith insts from cmp
    # ADD rax, 0

    # Load a secret
    MOV rax, qword ptr [r14 + rdx] # Load some input value from sandbox
    
    # Interference Gadget
    AND rax, 0b1000000
    mov rcx, rax # Set secret

    mov RDX, qword ptr [r14 + rax] # sandbox_base + 64 if rcx==0 ELSE sandbox_base + 0 if rcx==64
    lea rax, qword ptr [rax + rcx] # If rcx == 0, add a cache line to rax, if not, nothing happens
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]
    lea rax, qword ptr [rax + rcx]
    mov RDX, qword ptr [r14 + rax]

.l1:
    MOV qword ptr [r14 + 4112], rax # Some random addr for when prediction succeeds
MFENCE
