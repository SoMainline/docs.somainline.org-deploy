.. TODO: Draft

:orphan:

Early bringup hacks
===================

Some things that might help with early porting

defconfig
^^^^^^^^^

Remove ``# CONFIG_VT is not set`` and add ``CONFIG_FRAMEBUFFER_CONSOLE=y``
