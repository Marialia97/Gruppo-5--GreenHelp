.class final Lcom/google/common/io/GwtWorkarounds$6;
.super Ljava/lang/Object;
.source "GwtWorkarounds.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/GwtWorkarounds;->stringBuilderOutput(I)Lcom/google/common/io/GwtWorkarounds$CharOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 223
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(C)V
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method
