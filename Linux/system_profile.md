# Linux System Profile

## 1. Workstation Specifications

| Component | Specification |
|---|---|
| CPU Model | Intel(R) Core(TM) i5-4310M CPU @ 2.70GHz |
| Physical CPU Cores | 2 |
| Logical CPUs | 4 |
| Architecture | x86_64 |
| Total RAM | 7.5 GiB |
| Used RAM | 479 MiB |
| Available RAM | 7.0 GiB |
| Primary Storage | Geonix Gold 512GB |
| Storage Type | SSD |
| Operating System | Ubuntu 26.04.1 LTS |
| Kernel Version | 6.18.40.1-microsoft-standard-WSL2 |
| Environment | Windows Subsystem for Linux 2 (WSL2) |

## 2. Binary Number Representation

### A. Decimal 75 to Binary

Repeated division by 2:

| Division | Quotient | Remainder |
|---|---:|---:|
| 75 ÷ 2 | 37 | 1 |
| 37 ÷ 2 | 18 | 1 |
| 18 ÷ 2 | 9 | 0 |
| 9 ÷ 2 | 4 | 1 |
| 4 ÷ 2 | 2 | 0 |
| 2 ÷ 2 | 1 | 0 |
| 1 ÷ 2 | 0 | 1 |

Reading the remainders from bottom to top:

**75 (decimal) = 1001011 (binary)**

### B. Binary 110101 to Decimal

Using positional weights:

| Binary Digit | Position | Calculation |
|---|---:|---:|
| 1 | 5 | 1 × 2⁵ = 32 |
| 1 | 4 | 1 × 2⁴ = 16 |
| 0 | 3 | 0 × 2³ = 0 |
| 1 | 2 | 1 × 2² = 4 |
| 0 | 1 | 0 × 2¹ = 0 |
| 1 | 0 | 1 × 2⁰ = 1 |

Total = 32 + 16 + 0 + 4 + 0 + 1 = **53**

**110101 (binary) = 53 (decimal)**

### C. Why Computers Use Binary

Computers use binary internally because their electronic circuits can reliably represent two states, ON (1) and OFF (0).

## 3. Commands Used for System Inspection

- `lscpu` — Displays CPU architecture and processor details.
- `free -h` — Displays memory usage.
- `lsblk` — Lists block storage devices.
- `uname -a` — Displays kernel and operating system information.

## 4. Conclusion

This practical exercise helped me understand Linux system inspection, workstation hardware specifications, and the conversion between decimal and binary number systems using manual calculations.