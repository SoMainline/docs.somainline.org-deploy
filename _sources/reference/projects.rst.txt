.. TODO: Draft

:orphan:

Drop-in Projects
================

.. todo:: Expand this

.. code::

    <remote name="som" fetch="ssh://git@github.com/SoMainline" />
    <remove-project name="platform/external/mesa3d" />
    <project path="external/mesa3d" name="mesa" remote="som" revision="master" />

    <remote name="rh" fetch="https://github.com/robherring/" />
    <project path="vendor/linaro/gbm_gralloc" name="gbm_gralloc" remote="rh" revision="master" />

    <remote name="drm-hwcomposer" fetch="https://gitlab.freedesktop.org/drm-hwcomposer/" />
    <remove-project name="platform/external/drm_hwcomposer" />
    <project path="external/drm_hwcomposer" name="drm-hwcomposer" remote="drm-hwcomposer" revision="main" />

Basically a substitution for libsde and other qcom DRM libs

Also: keymaster, gatekeeper software impls
