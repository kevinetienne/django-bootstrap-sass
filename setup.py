from setuptools import setup

setup(
    name='django-bootstrap-sass',
    version='1.0.0',
    author='Kevin Etienne',
    author_email='etienne.kevin@gmail.com',
    url='http://github.com/ekevin/django-bootstrap-sass',
    license='Apache licence, see LICENCE',
    description='Bootstrap sass file for django',
    long_description=open('README.rst').read(),
    packages=['bootstrap_sass'],
    package_data={'bootstrap_sass': [
        'static/javascripts/*',
        'static/javascripts/bootstrap/*',
        'static/stylesheets/*',
        'static/stylesheets/bootstrap/*',
        'static/stylesheets/bootstrap/mixins/*',
        'static/fonts/bootstrap/*',
    ]},
)


