.class Lcom/google/appinventor/components/runtime/Web$4;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->Delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$4;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 646
    :try_start_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$4;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "DELETE"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Web;->access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2 .. :try_end_d} :catch_e
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_2 .. :try_end_d} :catch_1b
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_2 .. :try_end_d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_45

    .line 659
    :goto_d
    return-void

    .line 647
    :catch_e
    move-exception v0

    .line 648
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "Delete"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_d

    .line 649
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1b
    move-exception v0

    .line 650
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "Delete"

    .line 651
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 650
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_d

    .line 652
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_2e
    move-exception v0

    .line 653
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "Delete"

    const/16 v4, 0x45d

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$4;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_d

    .line 655
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    :catch_45
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$4;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "Delete"

    const/16 v4, 0x45a

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$4;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_d
.end method
