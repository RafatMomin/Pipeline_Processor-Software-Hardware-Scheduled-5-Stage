# ⚙️ PipelineCore-Duo: Software & Hardware Scheduled 5-Stage MIPS Processor (VHDL)

> A VHDL-based 5-stage pipelined MIPS processor featuring both **software-scheduled** and **hardware-scheduled** implementations. Includes full hazard detection, data forwarding, and optimized instruction throughput. Designed as a performance-optimized educational processor for CprE 381 at Iowa State University.

---

## 🖼️ Processor Architecture

![Processor Diagram](images/processor_diagram.png)

This pipelined MIPS processor follows the standard 5-stage pipeline:

- **IF** – Instruction Fetch  
- **ID** – Instruction Decode / Register Fetch  
- **EX** – Execute / Address Calculation  
- **MEM** – Memory Access  
- **WB** – Write Back

Both implementations handle hazards through different strategies:
- Software: Static instruction reordering
- Hardware: Forwarding Unit + Hazard Detection Unit

---

## 📊 Performance Comparison

![Processor Performance](images/Processor_performance.png)

This performance plot compares the throughput and cycle counts for both scheduling methods under benchmark tests.

---

## 🚀 Features

✅ **Dual Implementation**:
- 🧠 *Software-Scheduled*: Optimized MIPS assembly with pre-arranged instructions
- ⚙️ *Hardware-Scheduled*: Runtime handling via Forwarding + Hazard Detection units

✅ **Full Pipeline Support**:
- Classic 5-stage MIPS pipeline
- Pipeline registers between stages

✅ **Hazard Handling**:
- Data hazards resolved via:
  - Data forwarding
  - Pipeline stalling when needed
- Control hazards managed via flushing and delay slot

✅ **Benchmark Program**:
- `grendel.s`: Stack-based topological sort using adjacency matrix

✅ **Testbench Coverage**:
- Complete VHDL simulation support with testbenches and waveforms

---

## 📁 Folder Structure
PipelineCore-Duo/
├── Hardware/
│ ├── mips/
│ │ ├── src/ # VHDL source files
│ │ └── test/ # VHDL testbenches
│ └── project2 report/ # Design documentation (hardware)
│
├── Software/
│ ├── mips/
│ │ ├── src/ # VHDL source files (software-scheduled variant)
│ │ └── test/ # Testbenches
│ └── project2 report/ # Design documentation (software)


---

## ▶️ How to Run Simulations

🛠️ **Tools Required**: Any VHDL-compatible simulator (e.g., ModelSim, Vivado, GHDL)

### 🔹 Software-Scheduled Pipeline
1. Navigate to:  
   `Software/mips/src/` and `Software/mips/test/`
2. Compile all `.vhd` files and run the testbench.
3. Load `grendel.s` or any test file into memory (manual or script-based).
4. Simulate and check waveforms/output.

### 🔸 Hardware-Scheduled Pipeline
1. Navigate to:  
   `Hardware/mips/src/` and `Hardware/mips/test/`
2. Compile with testbench.
3. Ensure hazard detection and forwarding units are included.
4. Simulate and observe cycle-level behavior.

---

## 🧪 Benchmark: `grendel.s`

A MIPS assembly implementation of topological sort for a graph with 4 nodes.  
Used to test pipeline execution time, hazard handling, and correctness.

---

## 📈 Sample Results

| Version             | CPI (avg) | Cycles | All Tests Passed |
|---------------------|-----------|--------|------------------|
| Software-Scheduled  | 1.1–1.3   | ~260–310 | ✅ Yes           |
| Hardware-Scheduled  | ~1.0      | ~190–220 | ✅ Yes           |

*Performance varies based on instruction dependencies.*

---

## 🎓 Developed For

📚 **CprE 381 – Computer Organization and Assembly**  
🏫 Iowa State University  
👨‍💻 **Rafat Momin**  **Tyler Kloser**
[LinkedIn](https://www.linkedin.com/in/rafatmomin/) 

---

## 📌 License

This project is for academic use and personal learning. Feel free to fork or reference with credit.

