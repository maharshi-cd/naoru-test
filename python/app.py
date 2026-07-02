"""Tiny deploy helper."""

import os


def main():
    print("starting deploy")
    # BUG: 'environment' is never defined -> NameError at runtime
    print(f"deploying to {environment}")


if __name__ == "__main__":
    main()
