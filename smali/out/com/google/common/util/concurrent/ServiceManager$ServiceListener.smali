.class final Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceListener"
.end annotation


# instance fields
.field final service:Lcom/google/common/util/concurrent/Service;

.field final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final watch:Lcom/google/common/base/Stopwatch;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "watch"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .registers 4
    .param p1, "service"    # Lcom/google/common/util/concurrent/Service;
    .param p2, "state"    # Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Lcom/google/common/base/Stopwatch;

    invoke-direct {v0}, Lcom/google/common/base/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    .line 599
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    .line 600
    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 601
    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .prologue
    .line 649
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has failed in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 653
    :try_start_35
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_3d

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 656
    :cond_3d
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$300(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_51

    .line 658
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 659
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 661
    return-void

    .line 658
    :catchall_51
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 659
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method finishedStarting(Z)V
    .registers 8
    .param p1, "currentlyHealthy"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 671
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v1

    .line 672
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 673
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startupTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 674
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_43

    .line 675
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$400(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;Z)V

    .line 676
    return-void

    .line 674
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public running()V
    .registers 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 612
    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_18

    .line 614
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 615
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 617
    return-void

    .line 614
    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 615
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method start()V
    .registers 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 680
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 681
    return-void
.end method

.method startTimer()V
    .registers 6

    .prologue
    .line 685
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v1

    .line 686
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 687
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 688
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Starting {0}"

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    :cond_1d
    monitor-exit v1

    .line 691
    return-void

    .line 690
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public starting()V
    .registers 1

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 607
    return-void
.end method

.method declared-synchronized startupTimeMillis()J
    .registers 5

    .prologue
    .line 695
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    .line 696
    :try_start_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v2

    .line 697
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 695
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 4
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 620
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_1b

    .line 621
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 623
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1c

    .line 625
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 626
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 629
    :cond_1b
    return-void

    .line 625
    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 626
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 5
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 632
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has terminated. Previous state was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 635
    :try_start_33
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_3e

    .line 638
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 641
    :cond_3e
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_52

    .line 643
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 644
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 646
    return-void

    .line 643
    :catchall_52
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 644
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method
