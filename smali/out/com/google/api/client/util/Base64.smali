.class public Lcom/google/api/client/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 2
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .registers 2
    .param p0, "base64Data"    # [B

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .registers 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .registers 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .registers 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64URLSafe([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .registers 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
