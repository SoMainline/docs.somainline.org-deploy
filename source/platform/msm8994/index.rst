MSM8994 (plutonium)
===================

This SoC was deemed to fail due to release-time software. At first, it literally barely worked, but with BSP updates it got stabler, cooler and more energy efficient. First flagship SoC to feature A4xx (A430 in this case) and first flagship ARM64 design from Qualcomm.

.. toctree::
   :maxdepth: 1

.. list-table:: Camera HW
   :header-rows: 1

   * - Component
     - Revision
     - Quantity
     - Quirks
   * - CSID
     - v3.1
     - 4
     - .
   * - CSIPHY
     - v3.1.1
     - 3
     - .
   * - ISPIF
     - v3.0
     - 1
     - .
   * - VFE
     - v4.6
     - 2
     - .

.. list-table:: Various HW
   :header-rows: 1

   * - Component
     - Revision
     - Quantity
     - Quirks
   * - TSENS
     - v1.2
     - 1x16 sensors
     - Custom slope calculation algo
