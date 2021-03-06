###########
python-pptx
###########

VERSION: 0.2.1 (second non-alpha release)


STATUS (as of Feb 25 2013)
==========================

Second release with basic capabilities, now supporting Python 2.6 in addition
to Python 2.7. Under active development, with new features added in a new
release roughly every two weeks. I'm just finishing up a port of the XML
manipulation to ``lxml.objectify`` to allow new features to be added more
quickly, so the next release should show a significant expansion of the API.


Vision
======

A robust, full-featured, and well-documented general-purpose library for
manipulating Open XML PowerPoint files.

* **robust** - High reliability driven by a comprehensive test suite.

* **full-featured** - Anything that the file format will allow can be
  accomplished via the API. (Note that visions often take some time to fulfill
  completely :).

* **well-documented** - I don't know about you, but I find it hard to remember
  what I was thinking yesterday if I don't write it down. That's not a problem
  for most of my thinking, but when it comes to how I set up an object
  hierarchy to interact, it can be a big time-waster. So I like it when things
  are nicely laid out in black-and-white. Other folks seem to like that too
  :).

* **general-purpose** - Applicability to all conceivable purposes is valued
  over being especially well-suited to any particular purpose. Particular
  purposes can always be accomplished by building a wrapper library of your
  own. Serving general purposes from a particularized library is not so easy.

* **manipulate** - While this library will perhaps most commonly be used for
  *writing* .pptx files, it will also be suitable for *reading* .pptx files
  and inspecting and manipulating their contents. I could see that coming in
  handy for full-text indexing, removing speaker notes, changing out
  templates, adding dynamically generated slides to static boilerplate, that
  sort of thing.


Documentation
=============

Documentation is hosted on Read The Docs (readthedocs.org) at
https://python-pptx.readthedocs.org/en/latest/. The documentation is now in
reasonably robust shape and is being developed steadily alongside the code.


Reaching out
============

We'd love to hear from you if you like |pp|, want a new feature, find a bug,
need help using it, or just have a word of encouragement.

The **mailing list** for |pp| is python.pptx@librelist.com.

The **issue tracker** is on github at `scanny/python-pptx`_.

Feature requests are best broached initially on the mailing list, they can be
added to the issue tracker once we've clarified the best approach,
particularly the appropriate API signature.

.. _`scanny/python-pptx`:
   https://github.com/scanny/python-pptx


Installation
============

|pp| may be installed with ``pip`` if you have it available::

    pip install python-pptx

It can also be installed using ``easy_install``::

    easy_install python-pptx

If neither ``pip`` nor ``easy_install`` is available, it can be installed
manually by downloading the distribution from PyPI, unpacking the tarball,
and running ``setup.py``::

    tar xvzf python-pptx-0.1.0a1.tar.gz
    cd python-pptx-0.1.0a1
    python setup.py install

|pp| depends on the ``lxml`` package and the Python Imaging Library
(``PIL``). Both ``pip`` and ``easy_install`` will take care of satisfying
those dependencies for you, but if you use this last method you will need to
install those yourself.


Release History
===============

Feb 25, 2013 - v0.2.1
   * Add support for Python 2.6
   * Add images from a stream (e.g. StringIO) in addition to a path, allowing
     images retrieved from a database or network resource to be inserted
     without saving first.
   * Expand text methods to accept unicode and UTF-8 encoded 8-bit strings.
   * Fix potential install bug triggered by importing ``__version__`` from
     package ``__init__.py`` file.

Feb 10, 2013 - v0.2.0
    First non-alpha release with basic capabilities: open presentation/template
    or use built-in default template, add slide, set placeholder text (e.g.
    bullet slides), add picture, add text box.


License
=======

Licensed under the `MIT license`_. Short version: this code is copyrighted by
me (Steve Canny), I give you permission to do what you want with it except
remove my name from the credits. See the LICENSE file for specific terms.

.. _MIT license:
   http://www.opensource.org/licenses/mit-license.php

.. |pp| replace:: ``python-pptx``