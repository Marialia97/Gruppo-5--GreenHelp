.class public Lcom/google/appinventor/components/runtime/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;,
        Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final mapDispatchDelegateToEventRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private static varargs delegateDispatchEvent(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z
    .registers 9
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;",
            ">;",
            "Lcom/google/appinventor/components/runtime/Component;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    const/4 v0, 0x0

    .line 220
    .local v0, "dispatched":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    .line 222
    .local v1, "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->access$200(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->access$300(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-interface {p0, p2, v3, v4, p3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 229
    const/4 v0, 0x1

    goto :goto_5

    .line 232
    .end local v1    # "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    :cond_21
    return v0
.end method

.method public static varargs dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 8
    .param p0, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "dispatched":Z
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 194
    .local v0, "dispatchDelegate":Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 195
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v2

    .line 196
    .local v2, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 197
    .local v3, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_25

    .line 198
    invoke-static {v0, v3, p0, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->delegateDispatchEvent(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z

    move-result v1

    .line 200
    :cond_25
    if-nez v1, :cond_2c

    const/4 v4, 0x1

    :goto_28
    invoke-interface {v0, p0, p1, v4, p2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 202
    .end local v2    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .end local v3    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    :cond_2b
    return v1

    .line 200
    .restart local v2    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .restart local v3    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    :cond_2c
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private static getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .registers 3
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    .prologue
    .line 87
    sget-object v1, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    .line 88
    .local v0, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    if-nez v0, :cond_14

    .line 89
    new-instance v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    .end local v0    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;-><init>(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 90
    .restart local v0    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    sget-object v1, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_14
    return-object v0
.end method

.method public static makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "componentId"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v0

    .line 112
    .local v0, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 113
    .local v1, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    if-nez v1, :cond_1c

    .line 114
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 115
    .restart local v1    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1c
    new-instance v2, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/EventDispatcher$1;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public static removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V
    .registers 3
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v0

    .line 176
    .local v0, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    if-eqz v0, :cond_d

    .line 177
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 179
    :cond_d
    return-void
.end method

.method private static removeEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .registers 2
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    .prologue
    .line 96
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    return-object v0
.end method

.method public static unregisterAllEventsForDelegation()V
    .registers 3

    .prologue
    .line 162
    sget-object v1, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    .line 163
    .restart local v0    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_a

    .line 165
    :cond_1e
    return-void
.end method

.method public static unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v0

    .line 137
    .local v0, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->access$000(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 138
    .local v2, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 154
    :cond_16
    return-void

    .line 141
    :cond_17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v3, "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    .line 143
    .local v1, "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->access$200(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 144
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 147
    .end local v1    # "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    :cond_3a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    .line 152
    .restart local v1    # "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3e
.end method
