.class final Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;
.super Lcom/google/api/client/json/CustomizeJsonParser;
.source "AbstractJsonFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StopAtItems"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;)V
    .registers 2

    .prologue
    .line 62
    .local p0, "this":Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;, "Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser<TT;>.StopAtItems;"
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;->this$0:Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;

    invoke-direct {p0}, Lcom/google/api/client/json/CustomizeJsonParser;-><init>()V

    return-void
.end method


# virtual methods
.method public stopAt(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    .local p0, "this":Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;, "Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser<TT;>.StopAtItems;"
    const-string v0, "items"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser$StopAtItems;->this$0:Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;

    iget-object v1, v1, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->feedClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
