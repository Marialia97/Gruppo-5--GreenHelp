.class Lcom/google/appinventor/components/runtime/File$3;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->Write(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$append:Z

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$3;->val$filename:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/File$3;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/16 v11, 0x838

    const/16 v10, 0x837

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 246
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->val$filename:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/File;->access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "filepath":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 248
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 250
    :cond_1d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 254
    :try_start_28
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_54

    .line 267
    :cond_2b
    :try_start_2b
    new-instance v2, Ljava/io/FileOutputStream;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    invoke-direct {v2, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 268
    .local v2, "fileWriter":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 269
    .local v4, "out":Ljava/io/OutputStreamWriter;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 271
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 272
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 274
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/File;->access$200(Lcom/google/appinventor/components/runtime/File;)Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/File$3$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/File$3$1;-><init>(Lcom/google/appinventor/components/runtime/File$3;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_53} :catch_79

    .line 289
    .end local v2    # "fileWriter":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    :goto_53
    return-void

    .line 255
    :catch_54
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    if-eqz v5, :cond_69

    .line 257
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "AppendTo"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v10, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_53

    .line 260
    :cond_69
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "SaveFile"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v10, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_53

    .line 280
    .end local v0    # "e":Ljava/io/IOException;
    :catch_79
    move-exception v0

    .line 281
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/File$3;->val$append:Z

    if-eqz v5, :cond_8e

    .line 282
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "AppendTo"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v11, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_53

    .line 285
    :cond_8e
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v7, "SaveFile"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v11, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_53
.end method
