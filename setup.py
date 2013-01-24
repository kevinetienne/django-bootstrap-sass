from distutils.core import setup

setup(
    name='django-bootstrap-sass',
    version='0.0.1-alpha',
    author='Kevin Etienne',
    author_email='etienne.kevin@gmail.com',
    url='http://github.com/ekevin/django-bootstrap-sass',
    license='Apache licence, see LICENCE',
    description='Bootstrap sass file for django',
    long_description=open('README.md').read(),
    packages=['bootstrap_sass'],
    package_data={'bootstrap': ['static/javascripts/*',
                                'static/stylesheets/*',
                                'static/images/*']},
)


