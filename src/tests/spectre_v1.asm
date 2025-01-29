.intel_syntax noprefix
.test_case_enter:
LFENCE

# reduce the entropy of rax
AND rax, 0b111111000000

# delay the cond. jump
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]
LEA rbx, qword ptr [rbx + rax + 1]

# reduce the entropy in rbx
AND rbx, 0b1000000
MOV r11, rax # Save rax

CMP rbx, 0
JE .l1  # misprediction
.l0:
    # rbx != 0
    MOV rax, qword ptr [r14 + rax]
JMP .l2
.l1:
    # rbx == 0
    MOV rax, qword ptr [r14 + 64]
.l2:
    MOV rax, qword ptr [r14 + 64]
    MOV rax, qword ptr [r14 + 128]
    CLFLUSH qword ptr [r14 + 128]
    LFENCE
    MOV qword ptr [r14 + 1000], rax

    # # Time measurement
    # AND rax, 0b111111111111 # instrumentation
    # MFENCE # Serializing call; Use CPUID if more delay needed

    # # All prev. loads/stores should have finished
    # MOV R11, qword ptr [r14 + r11] # Target load - Prev. Speculative load

    # MFENCE # To serialize stores

    # MOV r11, qword ptr [r14 + 64] # After fence load

    # # Stall: Dependency chains with r11, repeated 5 times
    # MOV r11, r11  # Dummy instruction (no effect)
    # ADD r11, 1    # Create dependency
    # SUB r11, 1    # Reverse the addition
    # IMUL r11, r11 # Multiply to create more delay
    # XOR r11, r11  # Clear r11 to reset

    # MOV r11, r11  # Second repetition
    # ADD r11, 1
    # SUB r11, 1
    # IMUL r11, r11
    # XOR r11, r11

    # MOV r11, r11  # Third repetition
    # ADD r11, 1
    # SUB r11, 1
    # IMUL r11, r11
    # XOR r11, r11

    # MOV r11, r11  # Fourth repetition
    # ADD r11, 1
    # SUB r11, 1
    # IMUL r11, r11
    # XOR r11, r11

    # MOV r11, r11  # Fifth repetition
    # ADD r11, 1
    # SUB r11, 1
    # IMUL r11, r11
    # XOR r11, r11

MFENCE
