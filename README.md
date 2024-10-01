# 📊 **Analog Input with the 8051 Microcontroller**

The **8051 microcontroller** lacks built-in **ADC (Analog-to-Digital Converter)** functionality, which limits its ability to handle analog signals directly. However, by integrating an external ADC like the **[ADC0804](https://www.ti.com/product/ADC0804)**, we can enable the 8051 to read analog signals from various sources, such as sensors or potentiometers, and convert them into digital values for processing.

## 🚀 **Repository Overview**

This repository demonstrates how to read an analog value from a **potentiometer** using the **8051 Microcontroller**. The process involves converting the analog voltage to its binary equivalent and displaying it on an **8-bit LED bar graph**. Additionally, the analog readings will be shown on an **LCD** for enhanced visualization.

<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/23bd514de03203891672ca09df32e5ae9720b674/assets/images/ADC0804_LED_8051_Ckt1.png" alt="Circuit Diagram 1" width="70%">
</p>


---

## 🔑 **Keywords**

**[AD0804](https://www.analog.com/en/products/ad0804.html)** | 
**[8051 Microcontroller](https://www.atmel.com/products/microcontrollers/8051.aspx)** | 
**[Analog-to-Digital Converter](https://en.wikipedia.org/wiki/Analog-to-digital_converter)** | 
**[Assembly Language](https://en.wikipedia.org/wiki/Assembly_language)** | 
**[Microcontroller Programming](https://en.wikipedia.org/wiki/Microcontroller)**

---

# 🌟 **AD0804 Analog-to-Digital Converter**
The AD0804 ADC is a reliable and efficient choice for converting analog signals to digital form. Its simplicity and low power requirements make it ideal for a wide range of applications, from data acquisition systems to embedded solutions.

### Basic Circuit Diagram:


<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/23bd514de03203891672ca09df32e5ae9720b674/assets/images/adc_model2.png" alt="AD0804 Circuit Diagram" width="60%">
</p>

## 🛠️ **Key Features:**

<div align="center">

| Feature                     | Description                                                             |
|-----------------------------|-------------------------------------------------------------------------|
| 🔢 **8-Bit Resolution**      | Converts analog signals to 256 discrete digital levels.                 |
| ⚡ **Single-Supply Operation** | Works on a simple +5V supply for ease of use.                          |
| ⏱️ **Fast Sampling Rate**     | Supports up to 10 kHz for moderate-speed applications.                 |
| 📈 **Wide Input Voltage Range** | Typically 0V to V_REF for versatile applications.                     |
| 🔌 **Internal Reference Voltage** | Reduces external components for simpler designs.                     |
| 💻 **Easy Digital Interface**  | Parallel output makes it simple to connect with microcontrollers.      |
| 💡 **Low Power Consumption**   | Ideal for portable and battery-operated devices.                       |

</div>

---

## 📊 **AD0804 Pin Description**

<div align="center">

| Pin Number | Pin Name   | Description                                 |
|------------|------------|---------------------------------------------|
| 1          | V_ref     | Reference voltage input                     |
| 2          | GND       | Ground connection                           |
| 3          | Vin       | Analog input voltage from potentiometer     |
| 4          | D0-D7     | Data output lines (8-bit)                  |
| 5          | CS        | Chip select                                 |
| 6          | RD        | Read control                                |
| 7          | WR        | Write control                               |
| 8          | ALE       | Address latch enable                        |
| 9          | INTR      | Interrupt output for conversion completion   |

</div>

---



### **Understanding ADC0804**

<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/e5c98394239fc9e77b0fe4b371b81433b1ef98bd/assets/images/AD0804_Simulation1.png" alt="Circuit Diagram 1" width="70%">
</p>

**ADC0804** is an **8-bit ADC** capable of measuring up to **8 analog inputs** simultaneously, translating analog values into digital outputs ranging from 0 to 255. Utilizing a successive approximation converter based on a differential potentiometric ladder, the ADC0804 effectively translates continuous analog signals into discrete digital values. 



**Why Use an ADC?**  
Analog signals represent real-world phenomena but need conversion into a format that microcontrollers can process. Electronic devices operate primarily in the **frequency domain**, making ADCs crucial for translating these continuous signals into a digital format that can be interpreted by microprocessors.

### **Key Features of ADC0804**:
- **Low Voltage Operation**: Works with 0-5 Volts.
- **Conversion Speed**: Maximum speed of **110 µs**, regardless of internal or external clock use.
- **Single Analog Input**: Converts a single analog signal into an 8-bit digital output.


### **Internal Circuit of ADC0804**
The internal circuitry of **ADC0804** is sophisticated, utilizing components like gates, flip-flops, shift registers, and a SAR latch. The **SAR (Successive Approximation Register)** latch converts continuous analog signals into discrete digital signals by performing binary searches across quantization levels. The integrated tri-state register holds data until a low-to-high pulse is applied, while an **8-bit shift register** sequentially outputs data in 8-bit formats.

---

### **Example Circuit in Proteus**
To visualize the ADC0804 in action, follow these steps to build the example circuit in **Proteus**:

<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/e5c98394239fc9e77b0fe4b371b81433b1ef98bd/assets/images/AD0804_Simulation2.png" alt="Image 1" style="width: 30%; margin-right: 1%;">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/e5c98394239fc9e77b0fe4b371b81433b1ef98bd/assets/images/AD0804_Simulation3.png" alt="Image 2" style="width: 30%; margin-right: 1%;">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/e5c98394239fc9e77b0fe4b371b81433b1ef98bd/assets/images/AD0804_Simulation4.png" alt="Image 3" style="width: 30%;">
</p>

1. Connect a variable voltage source to the **analog input** pins.
2. Use logic states for controlling and visualizing the output.
3. Attach a logic state changer to the **INT** and **WR** pins.
4. Connect logic viewers to the output pins of the ADC0804.
5. Ensure the ground for analog and digital components is shared.
6. Input voltage must not exceed **6.5 Volts** (real-life constraints).

The complete circuit will resemble the provided example, allowing you to convert voltage into a digital value efficiently.





## 📖 **Features of this Repository**

<div align="center">

| Feature                           | Description                                                                     |
|-----------------------------------|---------------------------------------------------------------------------------|
| 🎛️ **Analog Input**               | Reads voltage from a potentiometer and converts it to a digital value           |
| 💡 **LED Bar Graph Display**       | Displays the binary equivalent on an 8-bit LED bar graph                        |
| 🖥️ **LCD Display**                | Shows the analog reading in real-time on an LCD                                 |
| 🔧 **Microcontroller Programming** | Written in **Assembly language** for the AT89C51                                |
| 🔌 **Hardware Integration**        | Designed for seamless integration with physical components                       |

</div>

---

## 📦 **Contents**

<div align="center">

| File                          | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `AD0804_Analog_Reading.asm`    | Assembly source code for reading analog values using AD0804                 |
| `AD0804_Analog_Reading.hex`    | Precompiled HEX file for direct microcontroller upload                      |
| `Proteus_Simulation.pdsprj`    | Proteus Design Suite simulation file                                        |
| **Screenshots**                | Demonstrations from the Proteus simulation                                  |

</div>

---

## 🛠️ **Hardware & Circuit Information**

<div align="center">

| Hardware Component             | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| **AD0804 ADC**                  | Converts the analog signal from the potentiometer into a digital signal      |
| **8051 Microcontroller**        | Core of the project, controlling the analog reading and output              |
| **Potentiometer**              | Adjustable resistor to provide varying voltage input                         |
| **LED Bar Graph**              | Displays the digital output from the ADC in a visual format                 |
| **LCD**                        | Provides a digital readout of the analog value                              |
| **Power Supply**                | A 5V DC power supply for the microcontroller and peripherals                |

</div>

### **Circuit Explanation**:

The **AD0804** ADC reads the voltage from the potentiometer and converts it into an 8-bit digital signal. This signal is then displayed on the LED bar graph, giving a visual representation of the voltage level. The same value is sent to the LCD for a numerical readout.

---

## 🔗 **Additional Information**

### **Potentiometer Functionality**:
The potentiometer's position determines the voltage supplied to the ADC, affecting the readings displayed on both the LED bar graph and the LCD.

---


## 🤝 **Contributing**

We welcome contributions! Feel free to submit pull requests or open issues for any bug fixes, feature enhancements, or optimizations to the assembly code.

---

## 📧 **Contact**

For any inquiries or assistance, reach out at [mostofa.melab@gmail.com](mailto:mostofa.melab@gmail.com).

---

<p align="center">
  <img src="your-contact-graphic.png" alt="Contact Graphic" width="50%">
</p>

If you found this project helpful, give it a ⭐ on GitHub!

