.class Lcom/google/appinventor/components/runtime/Web$2;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->PostFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 507
    :try_start_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$path:Ljava/lang/String;

    const-string v5, "POST"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Web;->access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2 .. :try_end_e} :catch_f
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_2 .. :try_end_e} :catch_1c
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_2 .. :try_end_e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_46

    .line 520
    :goto_e
    return-void

    .line 508
    :catch_f
    move-exception v0

    .line 509
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "PostFile"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_e

    .line 510
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1c
    move-exception v0

    .line 511
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "PostFile"

    .line 512
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 511
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_e

    .line 513
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_2f
    move-exception v0

    .line 514
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "PostFile"

    const/16 v4, 0x45d

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_e

    .line 516
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    :catch_46
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "PostFile"

    const/16 v4, 0x450

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$path:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_e
.end method
