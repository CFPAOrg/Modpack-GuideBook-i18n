import argparse
from pack import pack


if __name__ == "__main__":
    # parse arguments
    # python3 main.py --pack(or -p) <id1.version1> <id1.version2> <id2.version3> --upload(or -u)
    # python3 main.py --all(or -a) pack all versions of all packages (conflict with -p)
    # if no pack argument is provided, get files affected by last commit and pack corresponding versions
    versions = {
        "id1": ["version1", "version2"],
    }
    for id, versions in versions.items():
        for version in versions:
            pack(id, version)
