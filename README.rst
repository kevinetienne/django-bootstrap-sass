# django-bootstrap-sass

django-bootstrap-sass uses jlong/sass-twitter-bootstrap to allow more
control over bootstrap stylesheets by using scss features.

Note:
You'll need to install a sass preprocessor such as django-compressor to be able
to include sass file into your django project and a tool to collect your static files such as django-supervisor or watchdog. 

## Install

    pip install django-bootstrap-sass

## Setup

Django settings.py

    INSTALLED_APPS = (
        # ...
        'django.contrib.staticfiles',
        'bootstrap_sass',
    )

## Usage

To include sass file

    <link rel="text/x-scss" href="{{ STATIC_URL }}stylesheets/bootstrap.scss" type="text/css" charset="utf-8">

To include javascripts file:

    <script src="{{ STATIC_URL }}stylesheets/bootstrap-{{ module }}.js"></script>

Where {{ module }} is one of bootstrap module (tab, affix..)

## Integration example

Here is a little setup to get started with django-bootstrap-sass. The following
assume you'll be using the following tools:

- [sass](http://sass-lang.com/download.html)
- [django-contrib-static-files](https://docs.djangoproject.com/en/dev/ref/contrib/staticfiles/)
- [django-compressor](https://github.com/jezdez/django_compressor)
- [django-supervisor](https://github.com/rfk/django-supervisor)



