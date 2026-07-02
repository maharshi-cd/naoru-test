"""Tiny deploy helper."""

import os


def main():
    print("starting deploy")
    environment = os.environ.get("ENVIRONMENT", "unknown")
    print(f"deploying to {environment}")


if __name__ == "__main__":
    main()
