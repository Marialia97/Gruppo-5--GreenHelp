.class Lcom/google/common/base/internal/Finalizer$ShutDown;
.super Ljava/lang/Exception;
.source "Finalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/internal/Finalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutDown"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/internal/Finalizer$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/base/internal/Finalizer$1;

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/common/base/internal/Finalizer$ShutDown;-><init>()V

    return-void
.end method
