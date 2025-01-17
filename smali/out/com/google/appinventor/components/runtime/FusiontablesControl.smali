.class public Lcom/google/appinventor/components/runtime/FusiontablesControl;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "FusiontablesControl.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that communicates with Google Fusion Tables. Fusion Tables let you store, share, query and visualize data tables; this component lets you query, create, and modify these tables.</p> <p><font color=red><b>NOTE:</b>&nbsp;Google shutdown the Fusion Tables service on December 3, 2019. This component no longer functions.</font></p> <p>This component uses the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API V2.0</a>. <p>Applications using Fusion Tables must authentication to Google\'s servers. There are two ways this can be done. The first way uses an API Key which you the developer obtain (see below). With this approach end-users must also login to access a Fusion Table. The second approach is to use a Service Account. With this approach you create credentials and a special \"Service Account Email Address\" which you obtain from the <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a>. You then tell the Fusion Table Control the name of the Service Account Email address and upload the secret key as an asset to your application and set the KeyFile property to point at this file. Finally you check the \"UseServiceAuthentication\" checkbox in the designer. When using a Service Account, end-users do not need to login to use Fusion Tables, your service account authenticates all access.</p> <p>To get an API key, follow these instructions.</p> <ol><li>Go to your <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a> and login if necessary.</li><li>Select the <i>Services</i> item from the menu on the left.</li><li>Choose the <i>Fusiontables</i> service from the list provided and turn it on.</li><li>Go back to the main menu and select the <i>API Access</i> item. </li></ol><p>Your API Key will be near the bottom of that pane in the section called \"Simple API Access\".You will have to provide that key as the value for the <i>ApiKey</i> property in your Fusiontables app.</p><p>Once you have an API key, set the value of the <i>Query</i> property to a valid Fusiontables SQL query and call <i>SendQuery</i> to execute the query.  App Inventor will send the query to the Fusion Tables server and the <i>GotResult</i> block will fire when a result is returned from the server.Query results will be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks.</p><p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure the query follows the syntax described in <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">the reference manual</a>, which means that things like capitalization for names of columns matters, and that single quotes must be used around column names if there are spaces in them.</p>"
    iconName = "images/fusiontables.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "fusiontables.jar,google-api-client-beta.jar,google-api-client-android2-beta.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client-beta.jar,guava-14.0.1.jar,gson-2.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCOUNT_MANAGER,android.permission.MANAGE_ACCOUNTS,android.permission.GET_ACCOUNTS,android.permission.USE_CREDENTIALS,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;,
        Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;
    }
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "App Inventor"

.field public static final AUTHORIZATION_HEADER_PREFIX:Ljava/lang/String; = "Bearer "

.field public static final AUTH_TOKEN_TYPE_FUSIONTABLES:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/fusiontables"

.field private static final DEFAULT_QUERY:Ljava/lang/String; = "show tables"

.field private static final DIALOG_TEXT:Ljava/lang/String; = "Choose an account to access FusionTables"

.field public static final FUSIONTABLES_POST:Ljava/lang/String; = "https://www.googleapis.com/fusiontables/v2/tables"

.field private static final FUSIONTABLE_SERVICE:Ljava/lang/String; = "fusiontables"

.field private static final FUSION_QUERY_URL:Ljava/lang/String; = "http://www.google.com/fusiontables/v2/query"

.field private static final LOG_TAG:Ljava/lang/String; = "FUSION"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530


# instance fields
.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private authTokenType:Ljava/lang/String;

.field private cachedServiceCredentials:Ljava/io/File;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private errorMessage:Ljava/lang/String;

.field private isServiceAuth:Z

.field private keyPath:Ljava/lang/String;

.field private loadingDialogMessage:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private queryResultStr:Ljava/lang/String;

.field private final requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

.field private scope:Ljava/lang/String;

.field private serviceAccountEmail:Ljava/lang/String;

.field private showLoadingDialog:Z

.field private standardErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "componentContainer"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 231
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    .line 167
    const-string v0, "oauth2:https://www.googleapis.com/auth/fusiontables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->authTokenType:Ljava/lang/String;

    .line 199
    const-string v0, "Error on Fusion Tables query"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->standardErrorMessage:Ljava/lang/String;

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    .line 224
    const-string v0, "https://www.googleapis.com/auth/fusiontables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->scope:Ljava/lang/String;

    .line 226
    const-string v0, "Please wait loading..."

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->loadingDialogMessage:Ljava/lang/String;

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showLoadingDialog:Z

    .line 232
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 233
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    .line 234
    const-string v0, "Choose an account to access FusionTables"

    const-string v1, "fusiontables"

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    .line 235
    const-string v0, "show tables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4e

    .line 238
    const-string v0, "Sorry. The Fusiontables component is not compatible with this phone."

    const-string v1, "This application must exit."

    const-string v2, "Rats!"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_4e
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->standardErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->authTokenType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseSqlCreateQueryToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .registers 7
    .param p1, "accountPrompt"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x7530

    .line 486
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_24

    .line 487
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 488
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 489
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 490
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p2, p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    .line 492
    .end local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    :goto_23
    return-object v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 745
    const/4 v8, 0x0

    .line 746
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "create table"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, "jsonContent":Ljava/lang/String;
    const-string v10, "FUSION"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http Post content = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v2, 0x0

    .line 752
    .local v2, "entity":Lorg/apache/http/entity/StringEntity;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://www.googleapis.com/fusiontables/v2/tables?key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 754
    .local v7, "request":Lorg/apache/http/client/methods/HttpPost;
    :try_start_44
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_49} :catch_f0

    .line 759
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .local v3, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v10, "application/json"

    invoke-virtual {v3, v10}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 760
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bearer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v7, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 765
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 767
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_6e
    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_71
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6e .. :try_end_71} :catch_10c
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_129

    move-result-object v8

    .line 779
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 780
    .local v9, "statusCode":I
    if-eqz v8, :cond_185

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_185

    .line 782
    :try_start_80
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, "jsonResult":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 784
    .local v5, "jsonObj":Lorg/json/JSONObject;
    const-string v10, "tableId"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_146

    .line 785
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tableId,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tableId"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_80 .. :try_end_ac} :catch_14a
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_ac} :catch_167

    .line 797
    :goto_ac
    const-string v10, "FUSION"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response code = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v10, "FUSION"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nResultStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "jsonResult":Ljava/lang/String;
    :goto_ec
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    move-object v2, v3

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v9    # "statusCode":I
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    :goto_ef
    return-object v10

    .line 755
    :catch_f0
    move-exception v1

    .line 756
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 757
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_ef

    .line 768
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_10c
    move-exception v1

    .line 769
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 770
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_ef

    .line 771
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_129
    move-exception v1

    .line 772
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 773
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_ef

    .line 787
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v5    # "jsonObj":Lorg/json/JSONObject;
    .restart local v6    # "jsonResult":Ljava/lang/String;
    .restart local v9    # "statusCode":I
    :cond_146
    :try_start_146
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    :try_end_148
    .catch Ljava/lang/IllegalStateException; {:try_start_146 .. :try_end_148} :catch_14a
    .catch Lorg/json/JSONException; {:try_start_146 .. :try_end_148} :catch_167

    goto/16 :goto_ac

    .line 790
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "jsonResult":Ljava/lang/String;
    :catch_14a
    move-exception v1

    .line 791
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 792
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    goto :goto_ef

    .line 793
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_167
    move-exception v1

    .line 794
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 795
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    goto/16 :goto_ef

    .line 801
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .restart local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_185
    const-string v10, "FUSION"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    goto/16 :goto_ec
.end method

.method private genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 7
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://www.google.com/fusiontables/v2/query"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 501
    .local v2, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    .local v1, "pair":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sql"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 504
    .local v0, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 506
    return-object v2
.end method

.method public static httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 5
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 644
    const-string v1, ""

    .line 645
    .local v1, "resultStr":Ljava/lang/String;
    if-eqz p0, :cond_37

    .line 646
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_38

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 648
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    :cond_37
    :goto_37
    return-object v1

    .line 651
    :cond_38
    :try_start_38
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_45

    move-result-object v1

    goto :goto_37

    .line 652
    :catch_45
    move-exception v0

    .line 653
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method

.method public static httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .registers 5
    .param p0, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 621
    const-string v1, ""

    .line 622
    .local v1, "resultStr":Ljava/lang/String;
    if-eqz p0, :cond_2b

    .line 623
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2c

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    :cond_2b
    :goto_2b
    return-object v1

    .line 627
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_35

    move-result-object v1

    goto :goto_2b

    .line 628
    :catch_35
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b
.end method

.method public static parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 666
    const-string v3, ""

    .line 668
    .local v3, "resultStr":Ljava/lang/String;
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 670
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 679
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_2e
    move-exception v1

    .line 680
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 682
    .end local v1    # "e":Ljava/io/IOException;
    :goto_32
    return-object v3

    .line 676
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_33
    :try_start_33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    const-string v5, "FUSION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resultStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_52} :catch_2e

    goto :goto_32
.end method

.method private parseSqlCreateQueryToJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x28

    const/4 v9, 0x0

    .line 709
    const-string v6, "FUSION"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsetoJSonSqlCreate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .local v2, "jsonContent":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 712
    const-string v6, "create table"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, "tableName":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x29

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "columnsList":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "columnSpecs":[Ljava/lang/String;
    const-string v6, "{\'columns\':["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_52
    array-length v6, v0

    if-ge v3, v6, :cond_9d

    .line 717
    aget-object v6, v0, v3

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "nameTypePair":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\'name\': \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', \'type\': \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_9a

    .line 720
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 723
    .end local v4    # "nameTypePair":[Ljava/lang/String;
    :cond_9d
    const-string v6, "],"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string v6, "\'isExportable\':\'true\',"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'name\': \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string v6, "CREATE TABLE "

    invoke-virtual {v2, v9, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v6, "FUSION"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 260
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 264
    new-instance v1, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 268
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 269
    return-void
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Google API Key. For help, click on the questionmark (?) next to the FusiontablesControl component in the Palette. "
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->apiKey:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public DoQuery()V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "DEPRECATED. This block is deprecated as of the end of 2012.  Use SendQuery."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    if-eqz v0, :cond_16

    .line 388
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Lcom/google/appinventor/components/runtime/FusiontablesControl$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 393
    :goto_15
    return-void

    .line 390
    :cond_16
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "DoQuery"

    const/4 v2, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public ForgetLogin()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Forget end-users login credentials. Has no effect on service authentication"
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    .line 411
    return-void
.end method

.method public GetRows(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "tableId"    # Ljava/lang/String;
    .param p2, "columns"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets all the rows from a specified fusion table. The tableId field is the id of therequired fusion table. The columns field is a comma-separeted list of the columns to retrieve."
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 428
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 429
    return-void
.end method

.method public GetRowsWithConditions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "tableId"    # Ljava/lang/String;
    .param p2, "columns"    # Ljava/lang/String;
    .param p3, "conditions"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets all the rows from a fusion table that meet certain conditions. The tableId field isthe id of the required fusion table. The columns field is a comma-separeted list of the columns toretrieve. The conditions field specifies what rows to retrieve from the table, for example the rows in whicha particular column value is not null."
    .end annotation

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 438
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    return-void
.end method

.method public GotResult(Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the Fusion Tables query has finished processing, with a result.  The result of the query will generally be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks."
    .end annotation

    .prologue
    .line 402
    const-string v0, "GotResult"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public InsertRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "tableId"    # Ljava/lang/String;
    .param p2, "columns"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Inserts a row into the specified fusion table. The tableId field is the id of thefusion table. The columns is a comma-separated list of the columns to insert values into. The values field specifies what values to insert into each column."
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") VALUES ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 419
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    return-void
.end method

.method public KeyFile()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path of the private key file.  This key file is used to get access to the FusionTables API."
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    return-object v0
.end method

.method public KeyFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 362
    .end local p1    # "path":Ljava/lang/String;
    :goto_8
    return-void

    .line 357
    .restart local p1    # "path":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    if-eqz v0, :cond_15

    .line 358
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    .line 361
    :cond_15
    if-nez p1, :cond_19

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_19
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    goto :goto_8
.end method

.method public LoadingDialogMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the loading message for the dialog."
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->loadingDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public LoadingDialogMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "loadingDialogMessage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Please wait loading..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->loadingDialogMessage:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public Query()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The query to send to the Fusion Tables API. <p>For legal query formats and examples, see the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API v2.0 reference manual</a>.</p> <p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure it follows the syntax described in the reference manual, which means that things like capitalization for names of columns matters, and that single quotes need to be used around column names if there are spaces in them.</p> "
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public Query(Ljava/lang/String;)V
    .registers 2
    .param p1, "query"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "show tables"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public SendQuery()V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the query to the Fusiontables server."
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 379
    return-void
.end method

.method public ServiceAccountEmail()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Service Account Email Address when service account authentication is in use."
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceAccountEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public ShowLoadingDialog(Z)V
    .registers 2
    .param p1, "showLoadingDialog"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showLoadingDialog:Z

    .line 470
    return-void
.end method

.method public ShowLoadingDialog()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to show the loading dialog"
    .end annotation

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showLoadingDialog:Z

    return v0
.end method

.method public UseServiceAuthentication(Z)V
    .registers 2
    .param p1, "bool"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    .line 285
    return-void
.end method

.method public UseServiceAuthentication()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether a service account should be used for authentication"
    .end annotation

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    return v0
.end method

.method public handleOAuthError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 691
    const-string v0, "FUSION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOAuthError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    .line 693
    return-void
.end method

.method public sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;
    .registers 11
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 573
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->standardErrorMessage:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    .line 574
    const-string v4, "FUSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v1, 0x0

    .line 578
    .local v1, "response":Lcom/google/api/client/http/HttpResponse;
    new-instance v4, Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    .line 579
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v5

    new-instance v6, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v6}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    new-instance v7, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    invoke-direct {v7}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    invoke-direct {v4, v5, v6, v7}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string v5, "App Inventor Fusiontables/v2.0"

    .line 582
    invoke-virtual {v4, v5}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;

    .line 583
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v4

    .line 584
    invoke-virtual {v4}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v2

    .line 590
    .local v2, "service":Lcom/google/api/services/fusiontables/Fusiontables;
    :try_start_47
    invoke-virtual {v2}, Lcom/google/api/services/fusiontables/Fusiontables;->query()Lcom/google/api/services/fusiontables/Fusiontables$Query;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query;->sql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    move-result-object v3

    .line 591
    .local v3, "sql":Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    const-string v4, "alt"

    const-string v5, "csv"

    invoke-virtual {v3, v4, v5}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v3, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 596
    invoke-virtual {v3}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    :try_end_5c
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_47 .. :try_end_5c} :catch_5e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5c} :catch_a4

    move-result-object v1

    .line 611
    .end local v3    # "sql":Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    :goto_5d
    return-object v1

    .line 598
    :catch_5e
    move-exception v0

    .line 599
    .local v0, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->printStackTrace()V

    .line 600
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    .line 601
    const-string v4, "FUSION"

    const-string v5, "JsonResponseException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v4, "FUSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getMessage() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v4, "FUSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 604
    .end local v0    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    :catch_a4
    move-exception v0

    .line 605
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 606
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    .line 607
    const-string v4, "FUSION"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v4, "FUSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getMessage() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v4, "FUSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d
.end method

.method signalJsonResponseError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "parsedException"    # Ljava/lang/String;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "SendQuery"

    const/16 v2, 0xa29

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1016
    return-void
.end method
