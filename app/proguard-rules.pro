# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# AndroidX Security delegates crypto operation to Tink which
# depends on Protobuf Javalite. Recently Protobuf Javalite
# introduced a change that relies on reflection, which doesn't
# work with Proguard.
# This rule keeps the (shaded) Protobuf classes in Tink as-is.
# See also:
# - https://github.com/google/tink/issues/361
# - https://github.com/protocolbuffers/protobuf/issues/6463
# - https://b.corp.google.com/issues/144631039
-keep class * extends com.google.crypto.tink.shaded.protobuf.GeneratedMessageLite {
  *;
}

