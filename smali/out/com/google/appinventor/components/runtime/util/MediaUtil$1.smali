.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$1;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$syncer:Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->val$syncer:Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->val$syncer:Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->error(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .param p1, "result"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->val$syncer:Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 374
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
