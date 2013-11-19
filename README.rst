# django-bootstrap-sass

django-bootstrap-sass uses jlong/sass-twitter-bootstrap to allow more
control over bootstrap stylesheets by using scss features.

Note:
You'll need to install a sass preprocessor such as django-compressor to be able
to include sass file into your django project. See integration example on how
I'm using this package.

## Install

    pip install django-bootstrap-sass

## Setup

Django settings.py

    INSTALLED_APPS = (
        # ...
        'django.contrib.staticfiles',
        'bootstrap-sass',
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

    sass
    django-contrib-static-files
    django-compressor
    django-supervisor

By using django-static-files we are able to keep our styling separated for each app, ex:



### To install sass (more information on the [sass website](http://sass-lang.com/download.html))

    sudo gem install sass

### To install django-compressor

    pip install django-compressor

Then add 'compressor to your installed apps

    INSTALLED_APPS = (
        # ...
        'django.contrib.staticfiles',
        'compressor',
        'bootstrap-sass',
    )

To be able to compile scss files add the following to your settings.py:

    COMPRESS_PRECOMPILERS = (
        ('text/x-scss', 'sass --scss {infile} {outfile}'),
    )

### Install django-supervisor


Using mixins

    .my-class {
        @include @include border-radius(8px);
        ...
    }


    .btn-pony {
        @include buttonBackground(#9B097B, #CC31A9;);
    }

Using extend

    .well-emphasis {
        @extend .well;
        font-weight: bold;
    }


# TODO css type to be able to compile files
# TODO install sass

# use a custom STATICFILE_DIRS where we'll initialize our manifest application.scss
# ex:
    @import "bootstrap";
    @import "chose";

Run collectstatic
To automate
