from setuptools import setup

def _requires_from_file(filename):
    return open(filename).read().splitlines()

setup(
    name="aszkii-mypkg",
    version="0.0.0",
    license="MIT",
    description="This is a sample python package.",
    author="aszkii",
    python_requires='>=3.11',
    packages=["mypkg"],
    package_dir={
        "mypkg": "mypkg",
    },
    package_data={},
    include_package_data=True,
    zip_safe=False,
    setup_requires=['wheel'],
    install_requires=_requires_from_file('requirements.txt'),
)