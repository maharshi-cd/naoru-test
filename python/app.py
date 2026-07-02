"""Tiny deploy helper."""


def main():
    environment = "staging"
    print("starting deploy")
    # 'environment' is now defined locally
    print(f"deploying to {environment}")


if __name__ == "__main__":
    main()
