.class final Lcom/google/common/io/GwtWorkarounds$2;
.super Ljava/lang/Object;
.source "GwtWorkarounds.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/GwtWorkarounds;->asCharInput(Ljava/lang/CharSequence;)Lcom/google/common/io/GwtWorkarounds$CharInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field index:I

.field final synthetic val$chars:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    .line 87
    return-void
.end method

.method public read()I
    .registers 4

    .prologue
    .line 77
    iget v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    iget-object v1, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 78
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 80
    :goto_16
    return v0

    :cond_17
    const/4 v0, -0x1

    goto :goto_16
.end method
