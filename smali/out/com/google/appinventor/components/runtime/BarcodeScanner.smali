.class public Lcom/google/appinventor/components/runtime/BarcodeScanner;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "BarcodeScanner.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using the Barcode Scanner to read a barcode"
    iconName = "images/barcodeScanner.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            name = "com.google.zxing.client.android.AppInvCaptureActivity"
            screenOrientation = "landscape"
            stateNotNeeded = "true"
            theme = "@android:style/Theme.NoTitleBar.Fullscreen"
            windowSoftInputMode = "stateAlwaysHidden"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "Barcode.jar,core.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.CAMERA"
.end annotation


# static fields
.field private static final LOCAL_SCAN:Ljava/lang/String; = "com.google.zxing.client.android.AppInvCaptureActivity"

.field private static final SCANNER_RESULT_NAME:Ljava/lang/String; = "SCAN_RESULT"

.field private static final SCAN_INTENT:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private useExternalScanner:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    .line 76
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/BarcodeScanner;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/BarcodeScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    return p1
.end method


# virtual methods
.method public AfterScan(Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 147
    const-string v0, "AfterScan"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public DoScan()V
    .registers 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Begins a barcode scan, using the camera. When the scan is complete, the AfterScan event will be raised."
    .end annotation

    .prologue
    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.zxing.client.android.SCAN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    if-nez v3, :cond_3b

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3b

    .line 98
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    if-nez v3, :cond_27

    .line 99
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "android.permission.CAMERA"

    new-instance v5, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;-><init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V

    .line 100
    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 128
    :goto_26
    return-void

    .line 115
    :cond_27
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.zxing.client.android.AppInvCaptureActivity"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3b
    iget v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-nez v3, :cond_47

    .line 119
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    .line 122
    :cond_47
    :try_start_47
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_52
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_52} :catch_53

    goto :goto_26

    .line 123
    :catch_53
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 125
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "BarcodeScanner"

    const/16 v5, 0x5dd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_26
.end method

.method public Result()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text result of the previous scan."
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    return-object v0
.end method

.method public UseExternalScanner(Z)V
    .registers 2
    .param p1, "useExternalScanner"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    .line 178
    return-void
.end method

.method public UseExternalScanner()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true App Inventor will look for and use an external scanning program such as \"Bar Code Scanner.\""
    .end annotation

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 132
    iget v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-ne p1, v0, :cond_1c

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    .line 133
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 134
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    .line 138
    :goto_17
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->AfterScan(Ljava/lang/String;)V

    .line 140
    :cond_1c
    return-void

    .line 136
    :cond_1d
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    goto :goto_17
.end method
