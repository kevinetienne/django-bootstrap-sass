# django-bootstrap-sass

django-bootstrap-sass uses jlong/sass-twitter-bootstrap to allow more
control over bootstrap stylesheets by using scss features.

Note:
You'll need to install a sass preprocessor such as django-compressor to be able
to include sass file into your django project.

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

    <link rel="stylesheet" href="{{ STATIC_URL }}stylesheets/bootstrap.scss" type="text/css" charset="utf-8">

If you're using django-compressor your settings.py should contains something similar:

    COMPRESS_PRECOMPILERS = (
        ('text/coffeescript', 'coffee --compile --stdio'),
        ('text/x-scss', 'sass --scss {infile} {outfile}'),
    )

To include javascripts file

    <script src="{{ STATIC_URL }}stylesheets/bootstrap-{{ module }}.js"></script>

where module could be one of the following:

    affix
    alert
    button
    carousel
    collapse
    dropdown
    modal
    popover
    scrollspy
    tab
    tooltip
    transition
    typeahead

## Example of uing features from scss

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

