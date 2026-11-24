# Nand2Tetris

My implementations for **From Nand to Tetris** (Part I), taken on Coursera.
It covers building a complete, working computer from first principles, starting from a single NAND gate.

## Projects

| Project | Topic | Contents |
|---|---|---|
| 1 | Boolean Logic | Not, And, Or, Xor, Mux, DMux and their 16-bit / multi-way variants |
| 2 | Boolean Arithmetic | HalfAdder, FullAdder, Add16, Inc16, ALU |
| 3 | Sequential Logic | Bit, Register, RAM8 to RAM16K, PC |
| 4 | Machine Language | Mult.asm, Fill.asm (Hack assembly) |
| 5 | Computer Architecture | Memory, CPU, Computer (the complete Hack computer) |

## Project 5: The Hack Computer

Project 5 brings the earlier chips together into a working computer:

- **Memory**: the full 32K address space, combining RAM16K (0 to 16383), the memory-mapped Screen (16384 to 24575) and the Keyboard (24576)
- **CPU**: decodes A- and C-instructions, runs the ALU, controls the A and D registers, and handles conditional jumps using the ALU's zero and negative flags
- **Computer**: ROM32K, CPU and Memory wired together into the top-level Hack computer

The computer runs real Hack programs, including the test programs `Add`, `Max` and `Rect`.

## Running

Open the `.hdl` files in the Nand2Tetris **Hardware Simulator** and the `.asm` files in the **CPU Emulator**.
Both tools are available at [nand2tetris.org](https://www.nand2tetris.org).

## Credits

The course, book, and project specifications are by Noam Nisan and Shimon Schocken
([nand2tetris.org](https://www.nand2tetris.org)). Course materials are not included in this repo.

> **If you're taking the course:** please don't copy these solutions.
> Getting stuck and working it out yourself is where the learning happens.
