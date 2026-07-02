"""Tiny deploy helper."""


def main():
    print("starting deploy")
    environment = os.environ.get("ENVIRONMENT", "staging")
    print(f"deploying to {environment}")


if __name__ == "__main__":
    main()
