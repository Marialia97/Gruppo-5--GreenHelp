.class Lcom/google/common/util/concurrent/Striped$PaddedLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddedLock"
.end annotation


# instance fields
.field q1:J

.field q2:J

.field q3:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 364
    return-void
.end method
