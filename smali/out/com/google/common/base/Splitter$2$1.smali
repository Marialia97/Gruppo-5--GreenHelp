.class Lcom/google/common/base/Splitter$2$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$2;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Splitter$2;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$2;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .param p2, "x0"    # Lcom/google/common/base/Splitter;
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .registers 3
    .param p1, "separatorPosition"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v0, v0, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public separatorStart(I)I
    .registers 8
    .param p1, "start"    # I

    .prologue
    .line 177
    iget-object v4, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v4, v4, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    .local v0, "delimeterLength":I
    move v3, p1

    .local v3, "p":I
    iget-object v4, p0, Lcom/google/common/base/Splitter$2$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v0

    .line 181
    .local v2, "last":I
    :goto_11
    if-gt v3, v2, :cond_2e

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 183
    iget-object v4, p0, Lcom/google/common/base/Splitter$2$1;->toSplit:Ljava/lang/CharSequence;

    add-int v5, v1, v3

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/google/common/base/Splitter$2$1;->this$0:Lcom/google/common/base/Splitter$2;

    iget-object v5, v5, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2b

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 182
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 189
    .end local v1    # "i":I
    :cond_2e
    const/4 v3, -0x1

    .end local v3    # "p":I
    :cond_2f
    return v3
.end method
