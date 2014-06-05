from setuptools import find_packages, setup


setup(
    name='exampleapp',
    version='1.0',
    author='Orne Brocaar',
    author_email='info@brocaar.com',
    description='An example application to experiment with',
    packages=find_packages(),
    install_requires=[
        'django',
    ],
    scripts=['manage.py'],
)
