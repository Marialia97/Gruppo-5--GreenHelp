.class public Lcom/google/api/client/http/protobuf/ProtoHttpParser;
.super Ljava/lang/Object;
.source "ProtoHttpParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "application/x-protobuf"

    iput-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpParser;->contentType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/api/client/http/protobuf/ProtoHttpParser;->contentType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static builder()Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;
    .registers 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/protobuf/ProtoHttpParser$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/client/http/protobuf/ProtoHttpParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/api/client/protobuf/ProtocolBuffers;->parseAndClose(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method
