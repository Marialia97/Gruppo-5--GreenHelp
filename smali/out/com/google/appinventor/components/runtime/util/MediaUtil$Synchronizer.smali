.class Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Synchronizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private volatile finished:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 62
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    .prologue
    .line 62
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized error(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 83
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->error:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 86
    monitor-exit p0

    return-void

    .line 83
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized waitfor()V
    .registers 2

    .prologue
    .line 68
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 70
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    .line 71
    :catch_9
    move-exception v0

    goto :goto_1

    .line 74
    :cond_b
    monitor-exit p0

    return-void

    .line 68
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wakeup(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->result:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 80
    monitor-exit p0

    return-void

    .line 77
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
