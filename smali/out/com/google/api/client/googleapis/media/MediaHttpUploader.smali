.class public final Lcom/google/api/client/googleapis/media/MediaHttpUploader;
.super Ljava/lang/Object;
.source "MediaHttpUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0xa00000

.field private static final KB:I = 0x400

.field static final MB:I = 0x100000

.field public static final MINIMUM_CHUNK_SIZE:I = 0x40000


# instance fields
.field private backOffPolicyEnabled:Z

.field private bytesUploaded:J

.field private chunkSize:I

.field private contentInputStream:Ljava/io/InputStream;

.field private currentRequest:Lcom/google/api/client/http/HttpRequest;

.field private directUploadEnabled:Z

.field private initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

.field private initiationMethod:Lcom/google/api/client/http/HttpMethod;

.field private final mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

.field private mediaContentLength:J

.field private metadata:Lcom/google/api/client/http/HttpContent;

.field private progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .registers 5
    .param p1, "mediaContent"    # Lcom/google/api/client/http/AbstractInputStreamContent;
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 118
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    .line 121
    new-instance v0, Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/GoogleHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->backOffPolicyEnabled:Z

    .line 159
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    .line 176
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/AbstractInputStreamContent;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 177
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 178
    if-nez p3, :cond_32

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 180
    return-void

    .line 178
    :cond_32
    invoke-virtual {p2, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_2f
.end method

.method private addMethodOverride(Lcom/google/api/client/http/HttpRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;

    .prologue
    .line 360
    new-instance v0, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 361
    return-void
.end method

.method private executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .registers 9
    .param p1, "initiationRequestUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 326
    sget-object v3, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->INITIATION_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 328
    const-string v3, "uploadType"

    const-string v4, "resumable"

    invoke-virtual {p1, v3, v4}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v3, v4, p1, v5}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 331
    .local v1, "request":Lcom/google/api/client/http/HttpRequest;
    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->addMethodOverride(Lcom/google/api/client/http/HttpRequest;)V

    .line 332
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v4}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/client/googleapis/GoogleHeaders;->setUploadContentType(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/api/client/googleapis/GoogleHeaders;->setUploadContentLength(J)V

    .line 334
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpRequest;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;

    .line 335
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 336
    invoke-virtual {v1, v6}, Lcom/google/api/client/http/HttpRequest;->setRetryOnExecuteIOException(Z)Lcom/google/api/client/http/HttpRequest;

    .line 337
    invoke-virtual {v1, v6}, Lcom/google/api/client/http/HttpRequest;->setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 338
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 339
    .local v2, "response":Lcom/google/api/client/http/HttpResponse;
    const/4 v0, 0x0

    .line 342
    .local v0, "notificationCompleted":Z
    :try_start_42
    sget-object v3, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->INITIATION_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4e

    .line 343
    const/4 v0, 0x1

    .line 345
    if-nez v0, :cond_4d

    .line 346
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 349
    :cond_4d
    return-object v2

    .line 345
    :catchall_4e
    move-exception v3

    if-nez v0, :cond_54

    .line 346
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_54
    throw v3
.end method

.method private getMediaContentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 314
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    .line 315
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_19
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 317
    :cond_1c
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    return-wide v0

    .line 315
    :cond_1f
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private getNextByteIndex(Ljava/lang/String;)J
    .registers 6
    .param p1, "rangeHeader"    # Ljava/lang/String;

    .prologue
    .line 445
    if-nez p1, :cond_5

    .line 446
    const-wide/16 v0, 0x0

    .line 448
    :goto_4
    return-wide v0

    :cond_5
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_4
.end method

.method private setContentAndHeadersOnCurrentRequest(J)V
    .registers 12
    .param p1, "bytesWritten"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    iget v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    int-to-long v2, v2

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 372
    .local v0, "blockSize":I
    new-instance v1, Lcom/google/api/client/http/InputStreamContent;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v2}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/common/io/LimitInputStream;

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    int-to-long v6, v0

    invoke-direct {v3, v4, v6, v7}, Lcom/google/common/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-direct {v1, v2, v3}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 375
    .local v1, "contentChunk":Lcom/google/api/client/http/InputStreamContent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/InputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;

    .line 376
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/InputStreamContent;->setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;

    .line 377
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    .line 379
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 380
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 381
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v0

    add-long/2addr v4, p1

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    .registers 3
    .param p1, "uploadState"    # Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 600
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    if-eqz v0, :cond_b

    .line 601
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    invoke-interface {v0, p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;->progressChanged(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V

    .line 603
    :cond_b
    return-void
.end method


# virtual methods
.method public getChunkSize()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    return v0
.end method

.method public getInitiationHeaders()Lcom/google/api/client/googleapis/GoogleHeaders;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    return-object v0
.end method

.method public getInitiationMethod()Lcom/google/api/client/http/HttpMethod;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public getMediaContent()Lcom/google/api/client/http/HttpContent;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    return-object v0
.end method

.method public getMetadata()Lcom/google/api/client/http/HttpContent;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getNumBytesUploaded()J
    .registers 3

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->bytesUploaded:J

    return-wide v0
.end method

.method public getProgress()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->bytesUploaded:J

    long-to-double v0, v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getProgressListener()Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUploadState()Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    return-object v0
.end method

.method public isBackOffPolicyEnabled()Z
    .registers 2

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->backOffPolicyEnabled:Z

    return v0
.end method

.method public isDirectUploadEnabled()Z
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    return v0
.end method

.method public serverErrorCallback()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v9, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    const-string v10, "The current request should not be null"

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v9, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v4

    .line 402
    .local v4, "request":Lcom/google/api/client/http/HttpRequest;
    new-instance v9, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v9}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v9, v4}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 404
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 405
    new-instance v9, Lcom/google/api/client/http/ByteArrayContent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [B

    invoke-direct {v9, v10, v11}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v4, v9}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 407
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes */"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)V

    .line 408
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 409
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/api/client/http/HttpRequest;->setRetryOnExecuteIOException(Z)Lcom/google/api/client/http/HttpRequest;

    .line 410
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v5

    .line 413
    .local v5, "response":Lcom/google/api/client/http/HttpResponse;
    :try_start_56
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/api/client/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getNextByteIndex(Ljava/lang/String;)J

    move-result-wide v2

    .line 416
    .local v2, "bytesWritten":J
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, "updatedUploadUrl":Ljava/lang/String;
    if-eqz v8, :cond_76

    .line 418
    iget-object v9, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    new-instance v10, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v10, v8}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 423
    :cond_76
    iget-object v9, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->reset()V

    .line 424
    iget-wide v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->bytesUploaded:J

    sub-long v6, v10, v2

    .line 425
    .local v6, "skipValue":J
    iget-object v9, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v9, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 426
    .local v0, "actualSkipValue":J
    cmp-long v9, v6, v0

    if-nez v9, :cond_94

    const/4 v9, 0x1

    :goto_8a
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 430
    invoke-direct {p0, v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setContentAndHeadersOnCurrentRequest(J)V
    :try_end_90
    .catchall {:try_start_56 .. :try_end_90} :catchall_96

    .line 432
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 434
    return-void

    .line 426
    :cond_94
    const/4 v9, 0x0

    goto :goto_8a

    .line 432
    .end local v0    # "actualSkipValue":J
    .end local v2    # "bytesWritten":J
    .end local v6    # "skipValue":J
    .end local v8    # "updatedUploadUrl":Ljava/lang/String;
    :catchall_96
    move-exception v9

    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v9
.end method

.method public setBackOffPolicyEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 2
    .param p1, "backOffPolicyEnabled"    # Z

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->backOffPolicyEnabled:Z

    .line 479
    return-object p0
.end method

.method public setChunkSize(I)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 3
    .param p1, "chunkSize"    # I

    .prologue
    .line 540
    const/high16 v0, 0x40000

    if-lt p1, v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 541
    iput p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    .line 542
    return-object p0

    .line 540
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDirectUploadEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 2
    .param p1, "directUploadEnabled"    # Z

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    .line 501
    return-object p0
.end method

.method public setInitiationHeaders(Lcom/google/api/client/googleapis/GoogleHeaders;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 2
    .param p1, "initiationHeaders"    # Lcom/google/api/client/googleapis/GoogleHeaders;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/googleapis/GoogleHeaders;

    .line 576
    return-object p0
.end method

.method public setInitiationMethod(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 3
    .param p1, "initiationMethod"    # Lcom/google/api/client/http/HttpMethod;

    .prologue
    .line 559
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    if-ne p1, v0, :cond_f

    :cond_8
    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 561
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    .line 562
    return-object p0

    .line 559
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setMetadata(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 2
    .param p1, "metadata"    # Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    .line 459
    return-object p0
.end method

.method public setProgressListener(Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .registers 2
    .param p1, "progressListener"    # Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    .line 521
    return-object p0
.end method

.method public upload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .registers 16
    .param p1, "initiationRequestUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    sget-object v11, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    if-ne v10, v11, :cond_56

    const/4 v10, 0x1

    :goto_7
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 223
    iget-boolean v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    if-eqz v10, :cond_67

    .line 224
    sget-object v10, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v10}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 226
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 227
    .local v0, "content":Lcom/google/api/client/http/HttpContent;
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    if-eqz v10, :cond_58

    .line 228
    new-instance v0, Lcom/google/api/client/http/MultipartRelatedContent;

    .end local v0    # "content":Lcom/google/api/client/http/HttpContent;
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/google/api/client/http/HttpContent;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    aput-object v13, v11, v12

    invoke-direct {v0, v10, v11}, Lcom/google/api/client/http/MultipartRelatedContent;-><init>(Lcom/google/api/client/http/HttpContent;[Lcom/google/api/client/http/HttpContent;)V

    .line 229
    .restart local v0    # "content":Lcom/google/api/client/http/HttpContent;
    const-string v10, "uploadType"

    const-string v11, "multipart"

    invoke-virtual {p1, v10, v11}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_2f
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v11, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationMethod:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v10, v11, p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 235
    .local v2, "request":Lcom/google/api/client/http/HttpRequest;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/google/api/client/http/HttpRequest;->setEnableGZipContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 236
    invoke-direct {p0, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->addMethodOverride(Lcom/google/api/client/http/HttpRequest;)V

    .line 237
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v3

    .line 238
    .local v3, "response":Lcom/google/api/client/http/HttpResponse;
    const/4 v5, 0x0

    .line 240
    .local v5, "responseProcessed":Z
    :try_start_43
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->bytesUploaded:J

    .line 241
    sget-object v10, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v10}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_60

    .line 242
    const/4 v5, 0x1

    .line 244
    if-nez v5, :cond_54

    .line 245
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_54
    move-object v4, v3

    .line 305
    .end local v0    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v2    # "request":Lcom/google/api/client/http/HttpRequest;
    .end local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v5    # "responseProcessed":Z
    .local v4, "response":Lcom/google/api/client/http/HttpResponse;
    :goto_55
    return-object v4

    .line 221
    .end local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_56
    const/4 v10, 0x0

    goto :goto_7

    .line 231
    .restart local v0    # "content":Lcom/google/api/client/http/HttpContent;
    :cond_58
    const-string v10, "uploadType"

    const-string v11, "media"

    invoke-virtual {p1, v10, v11}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 244
    .restart local v2    # "request":Lcom/google/api/client/http/HttpRequest;
    .restart local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v5    # "responseProcessed":Z
    :catchall_60
    move-exception v10

    if-nez v5, :cond_66

    .line 245
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_66
    throw v10

    .line 252
    .end local v0    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v2    # "request":Lcom/google/api/client/http/HttpRequest;
    .end local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v5    # "responseProcessed":Z
    :cond_67
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 255
    .local v1, "initialResponse":Lcom/google/api/client/http/HttpResponse;
    :try_start_6b
    new-instance v8, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_f0

    .line 257
    .local v8, "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 261
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v10}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    iput-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    .line 262
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v10

    if-nez v10, :cond_94

    .line 263
    new-instance v10, Ljava/io/BufferedInputStream;

    iget-object v11, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    .line 269
    :cond_94
    :goto_94
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v10

    iput-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    .line 270
    new-instance v10, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v10}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    iget-object v11, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v10, v11}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 271
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpRequest;->setAllowEmptyContent(Z)Lcom/google/api/client/http/HttpRequest;

    .line 272
    iget-wide v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->bytesUploaded:J

    invoke-direct {p0, v10, v11}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setContentAndHeadersOnCurrentRequest(J)V

    .line 273
    iget-boolean v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->backOffPolicyEnabled:Z

    if-eqz v10, :cond_c0

    .line 276
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    new-instance v11, Lcom/google/api/client/googleapis/media/MediaUploadExponentialBackOffPolicy;

    invoke-direct {v11, p0}, Lcom/google/api/client/googleapis/media/MediaUploadExponentialBackOffPolicy;-><init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpRequest;->setBackOffPolicy(Lcom/google/api/client/http/BackOffPolicy;)Lcom/google/api/client/http/HttpRequest;

    .line 278
    :cond_c0
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 279
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpRequest;->setRetryOnExecuteIOException(Z)Lcom/google/api/client/http/HttpRequest;

    .line 280
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v3

    .line 281
    .restart local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    const/4 v6, 0x0

    .line 283
    .local v6, "returningResponse":Z
    :try_start_d3
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v10

    if-eqz v10, :cond_f5

    .line 284
    iget-wide v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    iput-wide v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->bytesUploaded:J

    .line 285
    iget-object v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 286
    sget-object v10, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v10}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_e7
    .catchall {:try_start_d3 .. :try_end_e7} :catchall_130

    .line 287
    const/4 v6, 0x1

    .line 304
    if-nez v6, :cond_ed

    .line 305
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_ed
    move-object v4, v3

    .end local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    goto/16 :goto_55

    .line 257
    .end local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v6    # "returningResponse":Z
    .end local v8    # "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    :catchall_f0
    move-exception v10

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v10

    .line 291
    .restart local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v6    # "returningResponse":Z
    .restart local v8    # "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    :cond_f5
    :try_start_f5
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_130

    move-result v10

    const/16 v11, 0x134

    if-eq v10, v11, :cond_106

    .line 292
    const/4 v6, 0x1

    .line 304
    if-nez v6, :cond_103

    .line 305
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_103
    move-object v4, v3

    .end local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    goto/16 :goto_55

    .line 297
    .end local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_106
    :try_start_106
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "updatedUploadUrl":Ljava/lang/String;
    if-eqz v7, :cond_116

    .line 299
    new-instance v9, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v9, v7}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .end local v8    # "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    .local v9, "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    move-object v8, v9

    .line 301
    .end local v9    # "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    .restart local v8    # "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    :cond_116
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/api/client/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getNextByteIndex(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->bytesUploaded:J

    .line 302
    sget-object v10, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v10}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_129
    .catchall {:try_start_106 .. :try_end_129} :catchall_130

    .line 304
    if-nez v6, :cond_94

    .line 305
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    goto/16 :goto_94

    .line 304
    .end local v7    # "updatedUploadUrl":Ljava/lang/String;
    :catchall_130
    move-exception v10

    if-nez v6, :cond_136

    .line 305
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_136
    throw v10
.end method
