.class Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
.super Ljava/lang/Object;
.source "CloudDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/CloudDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "storedValue"
.end annotation


# instance fields
.field private tag:Ljava/lang/String;

.field private valueList:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueList"    # Lorg/json/JSONArray;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->tag:Ljava/lang/String;

    .line 285
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->valueList:Lorg/json/JSONArray;

    .line 286
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValueList()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->valueList:Lorg/json/JSONArray;

    return-object v0
.end method
