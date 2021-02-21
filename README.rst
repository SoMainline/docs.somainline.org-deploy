SoMainline Open Source Hardware Documentation
=============================================

This repository is a place for all the knowledge about our SoCs and devices that we managed to discover through the porting process.

Building
--------

Install ``python-sphinx`` and ``python-sphinx-rtd-theme``.

Run ``make html`` and open ``build/html/index.html`` in your browser.

To create pretty URLs without the ``.html`` suffix, use ``make dirhtml``.

Directory structure
-------------------


Please keep the repo sorted like so::

    ├─ README.rst
    └─ source
       └─ platform
          └─ socname.md
             ├─ index.rst
             └─ vendorname
                └─ devicename
                   ├─ index.rst
                   ├─ devicetree.dts
                   └─ picture.png

Editing
-------
Documentation is written in `reStructuredText <https://en.wikipedia.org/wiki/ReStructuredText>`_.
A good introduction is the `reStructuredText Primer <https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html>`_ from Sphinx.

To add a new device, please run ``newdevice.sh``.

Contributing
------------

We strive to bring a community-founded hardware documentation for all devices. The knowledge is out there, scattered over various places like downstream kernel sources. This repository's purpose is to gather all of this data in one place, so as to make it easily accessible. We want to proceed these efforts with all due respect to hardware vendors' intellectual property.
By adding data to the knowledge base, you agree:

* the knowledge you submit comes from a publicly available source (and not confidential documents),
* the knowledge has been obtained legally,
* the data you submit is factually accurate,
* that if the data in question is a register dump, magic sequence or a different non-open-coded information, you provide a way to reproduce the dump.

License
-------

By submitting hardware documentation, you agree to the Contributing section.

By uploading a photo, video, or a media file of a different type, you agree to share them under one of the `Creative Commons Licenses <https://creativecommons.org/licenses/>`_.

All trademarks are property of their respective owners.
