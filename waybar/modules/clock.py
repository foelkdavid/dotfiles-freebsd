#!/usr/local/bin/python3

import json
import time
import sys

data = {
    "text": time.strftime("%H:%M"),
    "alt": time.strftime("%a, %d, %b, %H:%M"),
    "class": "custom-clock"
}

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "toggle":
        data["text"], data["alt"] = data["alt"], data["text"]

    print(json.dumps(data), flush=True)
