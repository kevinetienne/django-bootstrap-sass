---------------------
django-bootstrap-sass
---------------------


.. image:: https://pypip.in/v/django-bootstrap-sass/badge.png
        :target: https://pypi.python.org/pypi/django-bootstrap-sass

.. image:: https://pypip.in/d/django-bootstrap-sass/badge.png
        :target: https://pypi.python.org/pypi/django-bootstrap-sass


django-bootstrap-sass uses jlong/sass-twitter-bootstrap_ to allow more
control over bootstrap stylesheets by using scss features.

Note:
You'll need to install a sass preprocessor such as django-compressor_ to be able
to include sass_ file into your django project and a tool to collect your static
files such as django-supervisor_ or watchdog_. 

Install
-------

    pip install django-bootstrap-sass

Setup
-----

Django settings.py

    INSTALLED_APPS = (
        # ...
        'django.contrib.staticfiles',
        'bootstrap_sass',
    )

Usage
-----

To include sass file

    <link rel="text/x-scss" href="{{ STATIC_URL }}stylesheets/bootstrap.scss" type="text/css" charset="utf-8">

To include javascripts file:

    <script src="{{ STATIC_URL }}javascripts/{{ module }}.js"></script>

Where `{{ module }}` is one of bootstrap module (`tab`, `affix`..)

Integration example
-------------------

* sass_
* django-contrib-static_
* django-compressor_
* django-supervisor_


.. _sass: http://sass-lang.com/download.html
.. _django-contrib-static-files: https://docs.djangoproject.com/en/dev/ref/contrib/staticfiles/
.. _django-compressor: https://github.com/jezdez/django_compressor
.. _django-supervisor: https://github.com/rfk/django-supervisor
.. _watchdog: https://github.com/gorakhargosh/watchdog
.. _jlong/sass-twitter-bootstrap: https://github.com/jlong/sass-twitter-bootstrap



