Glossary
========

Glossary of names, acronyms, subsystems and more.

.. Keep this sorted alphabetically!

====================  =========================================  ===============  ========================================
Short                 Full                                       Context          Owner
====================  =========================================  ===============  ========================================
ADPL                  Advanced Data Path Logging                 Modem?           Qualcomm-specific
aDSP                  Audio Digital Signal Processor             Audio            Qualcomm-specific
AMSS                  Advanced Mobile Subscriber Software                         Qualcomm-specific
AOSS                  Always-On SubSystem                                         Qualcomm-specific
APQ                   Application Processor Qualcomm                              Qualcomm-specific
APSS                  Application Processor SubSystem                             Qualcomm-specific
AXI_                  Advanced eXtensible Interface
BAM                   Bus Access Module                                           Qualcomm-specific
BLSP                  BAM Low Speed Peripherals                                   Qualcomm-specific
CABC/CABL             Content Adaptive BackLight/Control         Display          Qualcomm-specific
CCI                   Camera Cell Index                          Camera           Qualcomm-specific
CDP                   Core Development Platform                                   Qualcomm-specific
cDSP                  Compute Digital Signal Processor                            Qualcomm-specific
CDT                   Configuration Data Table                                    Generic
CE                    Crypto Engine                                               Generic
COPP                  Common Object PostProcessing                                Qualcomm-specific
CSI2_                 Camera Serial Interface                    Camera           MIPI_
CSID                  `CSI <CSI2>`_ Decoder                      Camera           MIPI_ or Qcom?
DPM                   Data Port Mapper                           Modem            Qualcomm-specific
DSI                   Display Serial Interface                   Display          MIPI_
DSPP                  Destination Surface Processor Pipes        Display          Qualcomm-specific
EDL                   Emergency Download Mode                                     Qualcomm-specific
FFBM                  Fast Factory Boot Mode                                      Qualcomm-specific??
FSG                   FileSystem Gold                                             Qualcomm-specific
GDSC                  Global Distributed Switch Controller                        Qualcomm-specific
GENI_                 GEneric INterface                          Serial           Qualcomm-specific
GSBI                  General Serial Bus Interface                                Qualcomm-specific
IPA                   Internet Packet Accelerator                                 Qualcomm-specific
LABIBB                LCD/AMOLED Boost, Inverting Buck-Boost     Display          Qcom?
LK                    LittleKernel (bootloader)                                   Project name
LLCC                  Low Level Cache Controller                                  Qualcomm-specific
LM                    Layer Mixer                                                 Qualcomm-specific
LMh                   Limits Management hardware                                  Qualcomm-specific
LPASS                 Low Power Audio SubSystem                                   Qualcomm-specific
LSC                   Lens Shading Compensation/Correction                        Qualcomm-specific?
MDSS                  Mobile/Multimedia Display SubSystem                         Qualcomm-specific
_`MIPI`               Mobile Industry Processor Interface
MMCC                  MultiMedia Clock & Reset Controller                         Qualcomm-specific
MMSS                  MultiMedia SubSystem                                        Qualcomm-specific
MPM                   MSM/Modem Power Manager                                     Qualcomm-specific
MSA                   Modem Self Authentication                                   Qualcomm-specific
MSM                   Mobile Station Modem                                        Qualcomm-specific
MTP                   Mobile Test Platform                                        Qualcomm-specific
MVBAR                 Monitor Vector Base Address                                 ARM
PBL                   Primary BootLoader                                          Generic
PIL                   Peripheral Image Loader                                     Qualcomm-specific
QCT                   Qualcomm CDMA Technologies                                  Qualcomm-specific
QDM                   Qualcomm Diagnostic Monitor                                 Qualcomm-specific
QFE                   Qualcomm Front End                                          Qualcomm-specific
QFPROM                Qualcomm Fuse Programmable ROM                              Qualcomm-specific
QHEE                  Qcom Hypervisor Execution Environment                       Qualcomm-specific
QMI                   Qualcomm Messaging Interface                                Qualcomm-specific
QRD                   Qualcomm Reference Design                                   Qualcomm-specific
QSAPPS                Qualcomm Secure Apps                                        Qualcomm-specific
QSD                   Qualcomm SnapDragon                                         Qualcomm-specific
QUP_                  Qualcomm Universal Peripheral               Serial          Qualcomm-specific
RCGwR                 Root Clock Generator with Ramp-controller   Clocks/CPU      Qualcomm-specific
RDI                   Raw Dump Interface                          Camera          Qualcomm-specific
RPM                   Resource Package Manager                                    Qualcomm-specific
SBL                   Secondary BootLoader                                        Generic
SCM                   Secure Channel Manager                                      Qualcomm-specific
SCR                   Secure Configuration Register                               ARM
SDE                   SnapDragon Display Engine                                   Qualcomm-specific
SE_                   Serial Engine                                               Qualcomm-specific??
SFR                   Subsystem-restart Failure Reason                            Qualcomm-specific
SLIMBUS               Serial Low-power Inter-chip Media Bus                       Qualcomm-specific
SMC                   Secure Monitor Call                                         ARM
SMD                   Shared Memory Driver                                        Qualcomm-specific
SMEM                  Shared MEMory                                               Qualcomm-specific
SMP2P                 Shared Memory Point-to-Point                                Qualcomm-specific
SMSM                  Shared Memory State Machine                                 Qualcomm-specific
SOF                   Start Of Frame                                              Generic?
SPI                   Serial Peripheral Interface                                 Bus, Generic
SPM                   Subsystem Power Management                                  Qualcomm-specific
SPS                   Smart Peripheral System                                     Qualcomm-specific
SSPP                  Source Surface Processor Pipe(s)                            Qualcomm-specific
SSR                   SubSystem Restart                                           Qualcomm-specific
TLMM                  Top Level Mode Multiplexer                                  ??Generic??
TZBSP                 TrustZone Board Support Package                             Qualcomm-specific??
VBIF                  Video Bus InterFace                                         Qualcomm-specific
VFE                   Video Front End                            Camera           Qualcomm-specific
VMIDMT                Virtual Machine ID Mapping Table                            ARM??
WCD                   WSP_ Codec Device                                           Qualcomm-specific
WCN                   Wireless Connectivity Network                               Qualcomm-specific
WCNSS                 Wireless Connectivity Network SubSystem                     Qualcomm-specific
WDSP                  Wideband Digital Signal Processor                           Generic
WSA                   WSP_ Smart Amplifier                                        Qualcomm-specific
_`WSP`                Wafer-Scale Package                                         Qualcomm-specific
XBL                   eXtensible BootLoader                                       Qualcomm-specific
====================  =========================================  ===============  ========================================

See also:

* `pmOS wiki: Qualcomm Glossary <https://wiki.postmarketos.org/wiki/Qualcomm_Glossary>`_
* `sx.ix5.org: Sony/Qualcomm Subsystems <https://sx.ix5.org/info/post/sony-qualcomm-device-subsystems/>`_
* `Android Display Overview <https://developer.qualcomm.com/download/db410c/android-display-overview.pdf>`_

.. _AXI: https://en.wikipedia.org/wiki/Advanced_eXtensible_Interface
.. _CSI2: https://www.mipi.org/specifications/csi-2
.. _GENI: https://www.kernel.org/doc/Documentation/devicetree/bindings/soc/qcom/qcom%2Cgeni-se.txt
.. _QUP: https://www.kernel.org/doc/Documentation/devicetree/bindings/soc/qcom/qcom%2Cgeni-se.txt
.. _SE: https://www.kernel.org/doc/Documentation/devicetree/bindings/soc/qcom/qcom%2Cgeni-se.txt
