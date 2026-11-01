#!/usr/bin/env python3
"""Restore V4 picker Activity registration in the exact original Instagram binary manifest."""
import base64
import hashlib
from pathlib import Path
import struct
import sys
import zlib

BASE_SHA = '070d63531150dc5c0576a49e1c3ac0b3cc4307a0e8b72a4f8d47280bb6e14050'
OUTPUT_SHA = '0833ad0c55b72ca6b239b0f55ab8e12b2f42acb9e4060ecca317a8bb8742e34c'
PATCH = 'eNrzVGBgYGBm4GBoecjKwMggw7Chl4nhOBsDHFhIMzA4gxTJABmeLEDGjUImBmcbaQjDkwko4svgPCWKgcEPyHTOiGZgUAIyPPmAhDtDIkMOEKYyFDFUMjiXABXJgeSYwEY7iwDtOmDNzODJA+QxMQowJEAtdQ4JZ2YAWQqWOQZ0DgfQlSDaWWEHE4MASInERiYGEZASEE+AgZmRGWiABMyAEydYGRaIMzAAAJmvG34='


def restore(source: Path, destination: Path):
    original = source.read_bytes()
    if hashlib.sha256(original).hexdigest() != BASE_SHA:
        raise SystemExit('Wrong original binary manifest. Expected Instagram 451.0.0.53.80 reference APK.')
    delta = zlib.decompress(base64.b64decode(PATCH))
    output = bytearray()
    index = 0
    while index < len(delta):
        op = delta[index:index + 1]
        index += 1
        if op == b'C':
            offset, length = struct.unpack_from('<II', delta, index)
            index += 8
            if offset + length > len(original):
                raise SystemExit('Invalid manifest copy range')
            output.extend(original[offset:offset + length])
        elif op == b'I':
            (length,) = struct.unpack_from('<I', delta, index)
            index += 4
            output.extend(delta[index:index + length])
            index += length
        else:
            raise SystemExit('Invalid manifest patch operation')
    if hashlib.sha256(output).hexdigest() != OUTPUT_SHA:
        raise SystemExit('Patched manifest SHA-256 mismatch')
    destination.write_bytes(output)


if __name__ == '__main__':
    if len(sys.argv) != 3:
        raise SystemExit('Usage: restore_manifest.py ORIGINAL_BINARY_MANIFEST OUTPUT_BINARY_MANIFEST')
    restore(Path(sys.argv[1]), Path(sys.argv[2]))
