.class final Lcom/google/common/io/BaseEncoding$5;
.super Ljava/lang/Object;
.source "BaseEncoding.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->ignoringInput(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)Lcom/google/common/io/GwtWorkarounds$CharInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

.field final synthetic val$toIgnore:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)V
    .registers 3

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$5;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$5;->val$toIgnore:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$5;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$CharInput;->close()V

    .line 773
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$5;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v1}, Lcom/google/common/io/GwtWorkarounds$CharInput;->read()I

    move-result v0

    .line 766
    .local v0, "readChar":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$5;->val$toIgnore:Lcom/google/common/base/CharMatcher;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    :cond_12
    return v0
.end method
