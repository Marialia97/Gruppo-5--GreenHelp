.class public Lcom/google/api/client/http/xml/XmlHttpContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "XmlHttpContent.java"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final elementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V

    .line 62
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->elementName:Ljava/lang/String;

    .line 63
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->data:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getElementName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .registers 3
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/XmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/XmlHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .registers 3
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/XmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/XmlHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/XmlHttpContent;
    .registers 2
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    .line 95
    return-object p0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/XmlHttpContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/XmlHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/XmlHttpContent;
    .registers 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    .line 84
    return-object p0
.end method

.method public final writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/XmlHttpContent;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->elementName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->data:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
