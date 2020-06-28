.class public Lcom/google/api/client/http/xml/XmlHttpParser;
.super Ljava/lang/Object;
.source "XmlHttpParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/xml/XmlHttpParser$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/xml"


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method public constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V
    .registers 3
    .param p1, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .prologue
    .line 69
    const-string v0, "application/xml"

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/xml/XmlHttpParser;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/String;)V
    .registers 4
    .param p1, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 79
    iput-object p2, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->contentType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static builder(Lcom/google/api/client/xml/XmlNamespaceDictionary;)Lcom/google/api/client/http/xml/XmlHttpParser$Builder;
    .registers 2
    .param p0, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .prologue
    .line 123
    new-instance v0, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/xml/XmlHttpParser$Builder;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V

    return-object v0
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
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
    .line 91
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 93
    .local v0, "content":Ljava/io/InputStream;
    :try_start_4
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 94
    .local v4, "result":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 95
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/api/client/xml/Xml;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_16} :catch_1a
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v4

    .line 98
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :catch_1a
    move-exception v1

    .line 99
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 100
    .local v2, "exception":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 101
    throw v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_24

    .line 103
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "exception":Ljava/io/IOException;
    :catchall_24
    move-exception v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v5
.end method
