.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .registers 13
    .param p3, "numHashFunctions"    # I
    .param p4, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    .line 62
    .local v2, "hash64":J
    long-to-int v0, v2

    .line 63
    .local v0, "hash1":I
    const/16 v6, 0x20

    ushr-long v6, v2, v6

    long-to-int v1, v6

    .line 64
    .local v1, "hash2":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_13
    if-gt v4, p3, :cond_2e

    .line 65
    mul-int v6, v4, v1

    add-int v5, v0, v6

    .line 66
    .local v5, "nextHash":I
    if-gez v5, :cond_1d

    .line 67
    xor-int/lit8 v5, v5, -0x1

    .line 69
    :cond_1d
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->size()I

    move-result v6

    rem-int v6, v5, v6

    invoke-virtual {p4, v6}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 70
    const/4 v6, 0x0

    .line 73
    .end local v5    # "nextHash":I
    :goto_2a
    return v6

    .line 64
    .restart local v5    # "nextHash":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 73
    .end local v5    # "nextHash":I
    :cond_2e
    const/4 v6, 0x1

    goto :goto_2a
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .registers 15
    .param p3, "numHashFunctions"    # I
    .param p4, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v4

    .line 46
    .local v4, "hash64":J
    long-to-int v1, v4

    .line 47
    .local v1, "hash1":I
    const/16 v7, 0x20

    ushr-long v8, v4, v7

    long-to-int v2, v8

    .line 48
    .local v2, "hash2":I
    const/4 v0, 0x0

    .line 49
    .local v0, "bitsChanged":Z
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_14
    if-gt v3, p3, :cond_2c

    .line 50
    mul-int v7, v3, v2

    add-int v6, v1, v7

    .line 51
    .local v6, "nextHash":I
    if-gez v6, :cond_1e

    .line 52
    xor-int/lit8 v6, v6, -0x1

    .line 54
    :cond_1e
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->size()I

    move-result v7

    rem-int v7, v6, v7

    invoke-virtual {p4, v7}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(I)Z

    move-result v7

    or-int/2addr v0, v7

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 56
    .end local v6    # "nextHash":I
    :cond_2c
    return v0
.end method
