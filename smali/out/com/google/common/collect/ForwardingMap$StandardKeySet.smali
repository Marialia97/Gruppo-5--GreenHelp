.class public Lcom/google/common/collect/ForwardingMap$StandardKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "ForwardingMap.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .registers 2

    .prologue
    .line 198
    .local p0, "this":Lcom/google/common/collect/ForwardingMap$StandardKeySet;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/ForwardingMap$StandardKeySet;->this$0:Lcom/google/common/collect/ForwardingMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$KeySet;-><init>()V

    return-void
.end method


# virtual methods
.method map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/google/common/collect/ForwardingMap$StandardKeySet;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/ForwardingMap$StandardKeySet;->this$0:Lcom/google/common/collect/ForwardingMap;

    return-object v0
.end method
