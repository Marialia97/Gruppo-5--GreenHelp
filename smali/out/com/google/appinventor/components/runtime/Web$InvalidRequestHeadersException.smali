.class Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
.super Ljava/lang/Exception;
.source "Web.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidRequestHeadersException"
.end annotation


# instance fields
.field final errorNumber:I

.field final index:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "errorNumber"    # I
    .param p2, "index"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 105
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    .line 106
    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    .line 107
    return-void
.end method
