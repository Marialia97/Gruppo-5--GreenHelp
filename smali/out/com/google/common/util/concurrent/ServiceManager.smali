.class public final Lcom/google/common/util/concurrent/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;,
        Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;,
        Lcom/google/common/util/concurrent/ServiceManager$Listener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final services:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/Service;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 163
    .local v1, "copy":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/Service;>;"
    new-instance v6, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    invoke-direct {v6, v9}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;-><init>(I)V

    iput-object v6, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 164
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 165
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 166
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/util/concurrent/Service;

    .line 167
    .local v5, "service":Lcom/google/common/util/concurrent/Service;
    new-instance v4, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;

    iget-object v6, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v4, v5, v6}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;-><init>(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 168
    .local v4, "listener":Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
    invoke-interface {v5, v4, v2}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 171
    invoke-interface {v5}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v6

    sget-object v9, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v6, v9, :cond_4c

    move v6, v7

    :goto_3f
    const-string v9, "Can only manage NEW services, %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v8

    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v0, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_20

    :cond_4c
    move v6, v8

    .line 171
    goto :goto_3f

    .line 174
    .end local v4    # "listener":Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
    .end local v5    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_4e
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    .line 175
    return-void
.end method

.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 186
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/util/concurrent/Service;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager;-><init>(Ljava/lang/Iterable;)V

    .line 187
    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/common/util/concurrent/ServiceManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 210
    return-void
.end method

.method public awaitHealthy()V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy()V

    .line 243
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager;->isHealthy()Z

    move-result v0

    const-string v1, "Expected to be healthy after starting"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 265
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for the services to become healthy."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_10
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager;->isHealthy()Z

    move-result v0

    const-string v1, "Expected to be healthy after starting"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 268
    return-void
.end method

.method public awaitStopped()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped()V

    .line 290
    return-void
.end method

.method public awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 303
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for the services to stop."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_10
    return-void
.end method

.method public isHealthy()Z
    .registers 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 315
    .local v1, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v2

    if-nez v2, :cond_a

    .line 316
    const/4 v2, 0x0

    .line 319
    .end local v1    # "service":Lcom/google/common/util/concurrent/Service;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method public servicesByState()Lcom/google/common/collect/ImmutableMultimap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/google/common/collect/ImmutableMultimap;->builder()Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    .line 330
    .local v0, "builder":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service;>;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/Service;

    .line 331
    .local v2, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v2}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    goto :goto_e

    .line 333
    .end local v2    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_22
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->build()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v3

    return-object v3
.end method

.method public startAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 221
    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/Service;

    .line 223
    .local v2, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v2}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v3

    .line 224
    .local v3, "state":Lcom/google/common/util/concurrent/Service$State;
    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v3, v4, :cond_34

    move v4, v5

    :goto_27
    const-string v7, "Service %s is %s, cannot start it."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v6

    aput-object v3, v8, v5

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_34
    move v4, v6

    goto :goto_27

    .line 227
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;>;"
    .end local v2    # "service":Lcom/google/common/util/concurrent/Service;
    .end local v3    # "state":Lcom/google/common/util/concurrent/Service$State;
    :cond_36
    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;

    .line 228
    .local v2, "service":Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
    invoke-virtual {v2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->start()V

    goto :goto_40

    .line 230
    .end local v2    # "service":Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
    :cond_50
    return-object p0
.end method

.method public startupTimes()Lcom/google/common/collect/ImmutableMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v7, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v4

    .line 345
    .local v4, "loadTimeMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 346
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/util/concurrent/Service;

    invoke-interface {v7}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v6

    .line 347
    .local v6, "state":Lcom/google/common/util/concurrent/Service$State;
    sget-object v7, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-eq v6, v7, :cond_14

    sget-object v7, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v6, v7, :cond_14

    .line 348
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;

    invoke-virtual {v7}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startupTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 351
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;>;"
    .end local v6    # "state":Lcom/google/common/util/concurrent/Service$State;
    :cond_48
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v7

    new-instance v8, Lcom/google/common/util/concurrent/ServiceManager$1;

    invoke-direct {v8, p0}, Lcom/google/common/util/concurrent/ServiceManager$1;-><init>(Lcom/google/common/util/concurrent/ServiceManager;)V

    invoke-virtual {v7, v8}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 358
    .local v5, "servicesByStartTime":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 359
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 360
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_65

    .line 362
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    :cond_75
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    return-object v7
.end method

.method public stopAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .registers 4

    .prologue
    .line 277
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 278
    .local v1, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->stop()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_a

    .line 280
    .end local v1    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_1a
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 366
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "services"

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
