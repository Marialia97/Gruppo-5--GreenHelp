.class final Lcom/google/common/base/CharMatcher$NegatedFastMatcher;
.super Lcom/google/common/base/CharMatcher$NegatedMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NegatedFastMatcher"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .registers 2
    .param p1, "original"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Lcom/google/common/base/CharMatcher;)V

    .line 829
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V
    .registers 3
    .param p1, "toString"    # Ljava/lang/String;
    .param p2, "original"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 832
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    .line 833
    return-void
.end method


# virtual methods
.method public final precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 837
    return-object p0
.end method

.method withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 842
    new-instance v0, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;->original:Lcom/google/common/base/CharMatcher;

    invoke-direct {v0, p1, v1}, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;-><init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method
