.class public Lcom/google/appinventor/components/runtime/Web;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Web.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides functions for HTTP GET, POST, PUT, and DELETE requests."
    iconName = "images/web.png"
    nonVisible = true
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "json.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Web$CapturedProperties;,
        Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;,
        Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Web"

.field private static final mimeTypeToExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private allowCookies:Z

.field private final cookieHandler:Ljava/net/CookieHandler;

.field private requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

.field private responseFileName:Ljava/lang/String;

.field private saveResponse:Z

.field private timeout:I

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 175
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    .line 176
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "application/zip"

    const-string v2, "zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mpeg"

    const-string v2, "mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/png"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "image/tiff"

    const-string v2, "tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/plain"

    const-string v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/html"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    const-string v1, "text/xml"

    const-string v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 220
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 221
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 222
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 207
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 208
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 210
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2e

    .line 211
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newCookieManager()Ljava/net/CookieHandler;

    move-result-object v0

    :goto_2b
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 213
    return-void

    .line 211
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Web;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Web;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Web;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 87
    iget v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Web;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .registers 8
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1414
    :try_start_2
    new-instance v1, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;-><init>(Lcom/google/appinventor/components/runtime/Web;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_7} :catch_8
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_2 .. :try_end_7} :catch_18

    .line 1421
    :goto_7
    return-object v1

    .line 1415
    :catch_8
    move-exception v0

    .line 1416
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x455

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1421
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_16
    const/4 v1, 0x0

    goto :goto_7

    .line 1418
    :catch_18
    move-exception v0

    .line 1419
    .local v0, "e":Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v2, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method private static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "responseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .prologue
    .line 1333
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1334
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1348
    :goto_a
    return-object v2

    .line 1340
    :cond_b
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1341
    .local v1, "indexOfSemicolon":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 1342
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1344
    :cond_19
    sget-object v2, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1345
    .local v0, "extension":Ljava/lang/String;
    if-nez v0, :cond_25

    .line 1346
    const-string v0, "tmp"

    .line 1348
    :cond_25
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_a
.end method

.method static decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "jsonText"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 933
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 5
    .param p0, "jsonText"    # Ljava/lang/String;
    .param p1, "useDicts"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 916
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 917
    :catch_5
    move-exception v0

    .line 918
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jsonText is not a legal JSON value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 1321
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_7

    move-result-object v2

    .line 1326
    :goto_4
    return-object v2

    .line 1322
    :catch_5
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/net/SocketTimeoutException;
    throw v0

    .line 1324
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v1

    .line 1326
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_4
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 9
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 1268
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 1269
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 1270
    const-string v2, "UTF-8"

    .line 1272
    :cond_9
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1274
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 1275
    .local v1, "contentLength":I
    if-eq v1, v7, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1278
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_1d
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 1280
    .local v0, "buf":[C
    :goto_21
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v7, :cond_37

    .line 1281
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2c

    goto :goto_21

    .line 1285
    .end local v0    # "buf":[C
    .end local v1    # "contentLength":I
    .end local v3    # "read":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_2c
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    throw v6

    .line 1275
    .restart local v1    # "contentLength":I
    :cond_31
    :try_start_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1d

    .line 1283
    .restart local v0    # "buf":[C
    .restart local v3    # "read":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2c

    move-result-object v6

    .line 1285
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1283
    return-object v6
.end method

.method private static getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1249
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "responseType":Ljava/lang/String;
    if-eqz v0, :cond_7

    .end local v0    # "responseType":Ljava/lang/String;
    :goto_6
    return-object v0

    .restart local v0    # "responseType":Ljava/lang/String;
    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method private static openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 10
    .param p0, "webProps"    # Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .param p1, "httpVerb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1169
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget v5, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1170
    iget v5, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1172
    const-string v5, "PUT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "DELETE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1175
    :cond_22
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1179
    :cond_25
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1180
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1181
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1182
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 1187
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5b
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    if-eqz v5, :cond_95

    .line 1188
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1189
    .local v1, "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1190
    .restart local v3    # "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_85
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1191
    .restart local v4    # "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 1196
    .end local v1    # "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_95
    return-object v0
.end method

.method private performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "webProps"    # Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .param p2, "postData"    # [B
    .param p3, "postFile"    # Ljava/lang/String;
    .param p4, "httpVerb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v14

    .line 1104
    .local v14, "connection":Ljava/net/HttpURLConnection;
    if-eqz v14, :cond_3f

    .line 1106
    if-eqz p2, :cond_40

    .line 1107
    :try_start_c
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/google/appinventor/components/runtime/Web;->writeRequestData(Ljava/net/HttpURLConnection;[B)V

    .line 1113
    :cond_11
    :goto_11
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 1114
    .local v5, "responseCode":I
    invoke-static {v14}, Lcom/google/appinventor/components/runtime/Web;->getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    .line 1115
    .local v6, "responseType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/appinventor/components/runtime/Web;->processResponseCookies(Ljava/net/HttpURLConnection;)V

    .line 1117
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    if-eqz v2, :cond_66

    .line 1118
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    invoke-static {v14, v2, v6}, Lcom/google/appinventor/components/runtime/Web;->saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1122
    .local v7, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/Web$6;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/Web$6;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_3c} :catch_4a
    .catchall {:try_start_c .. :try_end_3c} :catchall_61

    .line 1150
    .end local v7    # "path":Ljava/lang/String;
    :goto_3c
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1153
    .end local v5    # "responseCode":I
    .end local v6    # "responseType":Ljava/lang/String;
    :cond_3f
    return-void

    .line 1108
    :cond_40
    if-eqz p3, :cond_11

    .line 1109
    :try_start_42
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v14, v1}, Lcom/google/appinventor/components/runtime/Web;->writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/net/SocketTimeoutException; {:try_start_42 .. :try_end_49} :catch_4a
    .catchall {:try_start_42 .. :try_end_49} :catchall_61

    goto :goto_11

    .line 1140
    :catch_4a
    move-exception v15

    .line 1142
    .local v15, "e":Ljava/net/SocketTimeoutException;
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/Web$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Web$8;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1148
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;-><init>()V

    throw v2
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_61

    .line 1150
    .end local v15    # "e":Ljava/net/SocketTimeoutException;
    :catchall_61
    move-exception v2

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2

    .line 1129
    .restart local v5    # "responseCode":I
    .restart local v6    # "responseType":Ljava/lang/String;
    :cond_66
    :try_start_66
    invoke-static {v14}, Lcom/google/appinventor/components/runtime/Web;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v13

    .line 1132
    .local v13, "responseContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/Web$7;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move-object v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/Web$7;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7c
    .catch Ljava/net/SocketTimeoutException; {:try_start_66 .. :try_end_7c} :catch_4a
    .catchall {:try_start_66 .. :try_end_7c} :catchall_61

    goto :goto_3c
.end method

.method private static processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .registers 16
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    .prologue
    .line 1358
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 1359
    .local v7, "requestHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    if-ge v2, v12, :cond_6e

    .line 1360
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 1362
    .local v3, "item":Ljava/lang/Object;
    instance-of v12, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v12, :cond_64

    move-object v9, v3

    .line 1363
    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1364
    .local v9, "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5a

    .line 1366
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, "fieldName":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 1371
    .local v1, "fieldValues":Ljava/lang/Object;
    move-object v5, v0

    .line 1372
    .local v5, "key":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1377
    .local v11, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v12, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v12, :cond_4c

    move-object v6, v1

    .line 1379
    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1380
    .local v6, "multipleFieldsValues":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_38
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v12

    if-ge v4, v12, :cond_54

    .line 1381
    invoke-virtual {v6, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    .line 1382
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 1386
    .end local v4    # "j":I
    .end local v6    # "multipleFieldsValues":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_4c
    move-object v8, v1

    .line 1387
    .local v8, "singleFieldValue":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    .end local v8    # "singleFieldValue":Ljava/lang/Object;
    :cond_54
    invoke-interface {v7, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1393
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "fieldValues":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    .end local v11    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5a
    new-instance v12, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v13, 0x457

    add-int/lit8 v14, v2, 0x1

    invoke-direct {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v12

    .line 1398
    .end local v9    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_64
    new-instance v12, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v13, 0x456

    add-int/lit8 v14, v2, 0x1

    invoke-direct {v12, v13, v14}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v12

    .line 1402
    .end local v3    # "item":Ljava/lang/Object;
    :cond_6e
    return-object v7
.end method

.method private processResponseCookies(Ljava/net/HttpURLConnection;)V
    .registers 5
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1254
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v1, :cond_19

    .line 1256
    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1257
    .local v0, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_19
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_19} :catch_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 1264
    .end local v0    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_19
    :goto_19
    return-void

    .line 1260
    :catch_1a
    move-exception v1

    goto :goto_19

    .line 1258
    :catch_1c
    move-exception v1

    goto :goto_19
.end method

.method private requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "functionName"    # Ljava/lang/String;
    .param p4, "httpVerb"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v5

    .line 683
    .local v5, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v5, :cond_7

    .line 721
    :goto_6
    return-void

    .line 688
    :cond_7
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Web$5;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method private static saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "responseFileName"    # Ljava/lang/String;
    .param p2, "responseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    .line 1291
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Web;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1293
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1295
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_f
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_39

    .line 1299
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 1300
    .local v0, "b":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_30

    .line 1305
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_34

    .line 1307
    :try_start_25
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_39

    .line 1310
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1313
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1303
    :cond_30
    :try_start_30
    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_1b

    .line 1307
    .end local v0    # "b":I
    :catchall_34
    move-exception v4

    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    throw v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 1310
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_39
    move-exception v4

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    throw v4
.end method

.method private static writeRequestData(Ljava/net/HttpURLConnection;[B)V
    .registers 5
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "postData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1207
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1208
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1210
    .local v0, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    :try_start_12
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1211
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1d

    .line 1213
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1215
    return-void

    .line 1213
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    throw v1
.end method

.method private writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 7
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1228
    .local v1, "in":Ljava/io/BufferedInputStream;
    const/4 v3, 0x1

    :try_start_c
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1229
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1230
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_36

    .line 1233
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :goto_1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 1234
    .local v0, "b":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2d

    .line 1239
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_31

    .line 1241
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_36

    .line 1244
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1246
    return-void

    .line 1237
    :cond_2d
    :try_start_2d
    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_1c

    .line 1241
    .end local v0    # "b":I
    :catchall_31
    move-exception v3

    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v3
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    .line 1244
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v3
.end method


# virtual methods
.method public AllowCookies(Z)V
    .registers 6
    .param p1, "allowCookies"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    .line 299
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v0, :cond_13

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "AllowCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 303
    :cond_13
    return-void
.end method

.method public AllowCookies()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater."
    .end annotation

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method public BuildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .registers 9
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 773
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 776
    :goto_4
    return-object v1

    .line 774
    :catch_5
    move-exception v0

    .line 775
    .local v0, "e":Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "BuildRequestData"

    iget v3, v0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 776
    const-string v1, ""

    goto :goto_4
.end method

.method public ClearCookies()V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all cookies for this Web component."
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_a

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    .line 382
    :goto_9
    return-void

    .line 379
    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "ClearCookies"

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public Delete()V
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 634
    const-string v0, "Delete"

    .line 636
    .local v0, "METHOD":Ljava/lang/String;
    const-string v2, "Delete"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 637
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 661
    :goto_a
    return-void

    .line 642
    :cond_b
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$4;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/Web$4;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public Get()V
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 397
    const-string v0, "Get"

    .line 399
    .local v0, "METHOD":Ljava/lang/String;
    const-string v2, "Get"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 400
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 425
    :goto_a
    return-void

    .line 405
    :cond_b
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$1;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/Web$1;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "responseType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 749
    const-string v0, "GotFile"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 750
    return-void
.end method

.method public GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "responseType"    # Ljava/lang/String;
    .param p4, "responseContent"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 734
    const-string v0, "GotText"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 736
    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "htmlText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given HTML text value. HTML character entities such as &amp;amp;, &amp;lt;, &amp;gt;, &amp;apos;, and &amp;quot; are changed to &amp;, &lt;, &gt;, &#39;, and &quot;. Entities such as &amp;#xhhhh, and &amp;#nnnn are changed to the appropriate characters."
    .end annotation

    .prologue
    .line 1069
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 1073
    :goto_4
    return-object v1

    .line 1070
    :catch_5
    move-exception v0

    .line 1071
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "HtmlTextDecode"

    const/16 v3, 0x452

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1073
    const-string v1, ""

    goto :goto_4
.end method

.method public JsonObjectEncode(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "jsonObject"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 948
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->encodeJsonObject(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 952
    :goto_4
    return-object v1

    .line 949
    :catch_5
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "JsonObjectEncode"

    const/16 v3, 0x45e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 952
    const-string v1, ""

    goto :goto_4
.end method

.method public JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "jsonText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 877
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v1

    .line 881
    :goto_6
    return-object v1

    .line 878
    :catch_7
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "JsonTextDecode"

    const/16 v3, 0x451

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 881
    const-string v1, ""

    goto :goto_6
.end method

.method public JsonTextDecodeWithDictionaries(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "jsonText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 896
    const/4 v1, 0x1

    :try_start_2
    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v1

    .line 900
    :goto_6
    return-object v1

    .line 897
    :catch_7
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "JsonTextDecodeWithDictionaries"

    const/16 v3, 0x451

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 900
    const-string v1, ""

    goto :goto_6
.end method

.method public PostFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 495
    const-string v0, "PostFile"

    .line 497
    .local v0, "METHOD":Ljava/lang/String;
    const-string v2, "PostFile"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 498
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 522
    :goto_a
    return-void

    .line 503
    :cond_b
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Web$2;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public PostText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 448
    const-string v0, "UTF-8"

    const-string v1, "PostText"

    const-string v2, "POST"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 474
    const-string v0, "PostTextWithEncoding"

    const-string v1, "POST"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public PutFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 592
    const-string v0, "PutFile"

    .line 594
    .local v0, "METHOD":Ljava/lang/String;
    const-string v2, "PutFile"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 595
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 619
    :goto_a
    return-void

    .line 600
    :cond_b
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Web$3;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public PutText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 545
    const-string v0, "UTF-8"

    const-string v1, "PutText"

    const-string v2, "PUT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public PutTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .prologue
    .line 571
    const-string v0, "PutTextWithEncoding"

    const-string v1, "PUT"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values."
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 9
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 271
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    .line 272
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_5
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_0 .. :try_end_5} :catch_6

    .line 276
    :goto_5
    return-void

    .line 273
    :catch_6
    move-exception v0

    .line 274
    .local v0, "e":Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "RequestHeaders"

    iget v3, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public ResponseFileName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated."
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "responseFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public SaveResponse(Z)V
    .registers 2
    .param p1, "saveResponse"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    .line 322
    return-void
.end method

.method public SaveResponse()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the response should be saved in a file."
    .end annotation

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method public TimedOut(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 760
    const-string v0, "TimedOut"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 761
    return-void
.end method

.method public Timeout()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of milliseconds that a web request will wait for a response before giving up. If set to 0, then there is no time limit on how long the request will wait."
    .end annotation

    .prologue
    .line 357
    iget v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    return v0
.end method

.method public Timeout(I)V
    .registers 4
    .param p1, "timeout"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 368
    if-gez p1, :cond_a

    .line 369
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    const-string v1, "Web Timeout must be a non-negative integer."

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_a
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 372
    return-void
.end method

.method public UriDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 844
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 850
    :goto_6
    return-object v1

    .line 845
    :catch_7
    move-exception v0

    .line 849
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Web"

    const-string v2, "UTF-8 is unsupported?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    const-string v1, ""

    goto :goto_6
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 824
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 830
    :goto_6
    return-object v1

    .line 825
    :catch_7
    move-exception v0

    .line 829
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Web"

    const-string v2, "UTF-8 is unsupported?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    const-string v1, ""

    goto :goto_6
.end method

.method public Url()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public XMLTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "XmlText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML string to produce a dictionary structure. See the App Inventor documentation on \"Other topics, notes, and details\" for information."
    .end annotation

    .prologue
    .line 1040
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_b
    .catch Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 1049
    :goto_c
    return-object v1

    .line 1041
    :catch_d
    move-exception v0

    .line 1045
    .local v0, "e":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
    const-string v1, "Web"

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "XMLTextDecode"

    const/16 v3, 0x451

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1047
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1046
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1049
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    goto :goto_c
.end method

.method public XMLTextDecodeAsDictionary(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p1, "XmlText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML into a set of nested dictionaries that capture the structure and data contained in the XML. See the help for more details."
    .end annotation

    .prologue
    .line 995
    :try_start_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/XmlParser;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/XmlParser;-><init>()V

    .line 996
    .local v2, "p":Lcom/google/appinventor/components/runtime/util/XmlParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 997
    .local v3, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 998
    .local v1, "is":Lorg/xml/sax/InputSource;
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v3, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1000
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/XmlParser;->getRoot()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v4

    .line 1005
    .end local v1    # "is":Lorg/xml/sax/InputSource;
    .end local v2    # "p":Lcom/google/appinventor/components/runtime/util/XmlParser;
    .end local v3    # "parser":Ljavax/xml/parsers/SAXParser;
    :goto_23
    return-object v4

    .line 1001
    :catch_24
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Web"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "XMLTextDecodeAsDictionary"

    const/16 v6, 0x451

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1003
    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1005
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    goto :goto_23
.end method

.method buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .registers 12
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;
        }
    .end annotation

    .prologue
    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 792
    .local v0, "delimiter":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    if-ge v1, v7, :cond_64

    .line 793
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 795
    .local v2, "item":Ljava/lang/Object;
    instance-of v7, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v7, :cond_5a

    move-object v5, v2

    .line 796
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 797
    .local v5, "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_50

    .line 799
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, "name":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    const-string v0, "&"

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 804
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_50
    new-instance v7, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;

    const/16 v8, 0x459

    add-int/lit8 v9, v1, 0x1

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;-><init>(II)V

    throw v7

    .line 808
    .end local v5    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_5a
    new-instance v7, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;

    const/16 v8, 0x458

    add-int/lit8 v9, v1, 0x1

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;-><init>(II)V

    throw v7

    .line 812
    .end local v2    # "item":Ljava/lang/Object;
    :cond_64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
