# 8051 Analog Reading

This repository guides you through reading an analog value from a potentiometer using the **8051 Microcontroller**. We will first convert the analog voltage to its binary equivalent and display it on an **8-bit LED bar graph**. Next, we will advance the analog reading to an **LCD** for clearer visualization.


## ⚙️ **Project Overview**

The project demonstrates how to interface a potentiometer with the **AT89C51** Microcontroller and convert the analog voltage into a digital representation. The readings are displayed both on an LED bar graph and an alphanumeric LCD, showcasing the capabilities of the **8051 MCU** family in handling analog signals.



<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/23bd514de03203891672ca09df32e5ae9720b674/assets/images/ADC0804_LED_8051_Ckt1.png" alt="AT89C51 Calculator" width="70%">
</p>

<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/23bd514de03203891672ca09df32e5ae9720b674/assets/images/ADC0804_LED_8051_Ckt.png" alt="AT89C51 Calculator" width="70%">
</p>

---

## 🔑 **Keywords**

**[AD0804](https://www.analog.com/en/products/ad0804.html)** | 
**[8051 Microcontroller](https://www.atmel.com/products/microcontrollers/8051.aspx)** | 
**[Analog-to-Digital Converter](https://en.wikipedia.org/wiki/Analog-to-digital_converter)** | 
**[Assembly Language](https://en.wikipedia.org/wiki/Assembly_language)** | 
**[Microcontroller Programming](https://en.wikipedia.org/wiki/Microcontroller)**

---

## 📖 **Key Features**

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


# 🌟 **AD0804 Analog-to-Digital Converter**
The AD0804 ADC is a reliable and efficient choice for converting analog signals to digital form. Its simplicity and low power requirements make it ideal for a wide range of applications, from data acquisition systems to embedded solutions.


### Basic Circuit Diagram:

<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/23bd514de03203891672ca09df32e5ae9720b674/assets/images/adc_model1.png" alt="AT89C51 Calculator" width="40%">
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

<p align="center">
  <img src="https://github.com/gmostofabd/8051-Analog/blob/23bd514de03203891672ca09df32e5ae9720b674/assets/images/adc_resolution.png
" alt="AT89C51 Calculator" width="70%">
</p>


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

--- 
