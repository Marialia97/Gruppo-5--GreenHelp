.class Lcom/google/appinventor/components/runtime/Web$5;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$httpVerb:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$httpVerb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 694
    :try_start_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_21

    .line 695
    :cond_e
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$text:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_15} :catch_2a

    move-result-object v1

    .line 706
    .local v1, "requestData":[B
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$httpVerb:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Web;->access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_16 .. :try_end_20} :catch_3f
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_16 .. :try_end_20} :catch_4c
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_16 .. :try_end_20} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_76

    .line 719
    .end local v1    # "requestData":[B
    :goto_20
    return-void

    .line 697
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_28} :catch_2a

    move-result-object v1

    .restart local v1    # "requestData":[B
    goto :goto_16

    .line 699
    .end local v1    # "requestData":[B
    :catch_2a
    move-exception v0

    .line 700
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    const/16 v5, 0x44e

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_20

    .line 707
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "requestData":[B
    :catch_3f
    move-exception v0

    .line 708
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_20

    .line 709
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_4c
    move-exception v0

    .line 710
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    .line 711
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 710
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_20

    .line 712
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_5f
    move-exception v0

    .line 713
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    const/16 v5, 0x45d

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_20

    .line 715
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    :catch_76
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    const/16 v5, 0x44f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$text:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_20
.end method
