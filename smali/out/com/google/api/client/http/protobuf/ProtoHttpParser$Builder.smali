.class public Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;
.super Ljava/lang/Object;
.source "ProtoHttpParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/protobuf/ProtoHttpParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "application/x-protobuf"

    iput-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;->contentType:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/protobuf/ProtoHttpParser;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Lcom/google/api/client/http/protobuf/ProtoHttpParser;

    iget-object v1, p0, Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/protobuf/ProtoHttpParser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;
    .registers 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;->contentType:Ljava/lang/String;

    .line 114
    return-object p0
.end method
