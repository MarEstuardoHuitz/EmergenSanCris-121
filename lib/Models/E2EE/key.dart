import 'dart:convert';
import 'dart:typed_data';

class Key {
  final Uint8List? bytes;
  final bool isPublic;

  Key(this.bytes) : this.isPublic = false;

  Key.withPublicBytes(this.bytes) : this.isPublic = true;

  @override
  int get hashCode => bytes!.length;

  @override
  operator ==(other) {
    if (other is Key) {
      return _byteListEqual(bytes!, other.bytes!);
    }
    return false;
  }

  /// Returns  string representation of the key.
  ///
  /// If [isPublic] is true, returns the result of [toBase64].
  ///
  /// Otherwise a static string so developers don't accidentally print secrets
  /// keys.
  @override
  String toString() {
    if (isPublic) {
      return "Key('${toBase64()}')";
    }
    return "Key('some bytes')";
  }

  /// Returns a Key from the base64 representation
  static Key fromBase64(String encoded, bool isPublic) {
    final bytes = base64.decode(encoded);
    if (isPublic) return Key.withPublicBytes(bytes);
    return Key(bytes);
  }

  /// Returns a base64 representation of the bytes.
  String toBase64() {
    return base64.encode(this.bytes!);
  }

  static bool _byteListEqual(List<int> left, List<int> right) {
    if (left.length != right.length) {
      return false;
    }
    var result = true;
    for (var i = 0; i < left.length; i++) {
      if (left[i] != right[i]) {
        result = false;
      }
    }
    return result;
  }
}

/// Holds a secret key and a public key.
class AsymmetricKeyPair {
  final Key publicKey;
  final Key secretKey;

  AsymmetricKeyPair({required this.secretKey, required this.publicKey})
      // ignore: unnecessary_null_comparison
      : assert(secretKey != null),
        // ignore: unnecessary_null_comparison
        assert(publicKey != null);

  @override
  int get hashCode => publicKey.hashCode;

  @override
  operator ==(other) =>
      other is AsymmetricKeyPair &&
      secretKey == other.secretKey &&
      publicKey == other.publicKey;
}
