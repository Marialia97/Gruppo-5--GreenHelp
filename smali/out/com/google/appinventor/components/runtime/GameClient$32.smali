.class Lcom/google/appinventor/components/runtime/GameClient$32;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$allowInstanceIdChange:Z

.field final synthetic val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic val$commandName:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;ZLjava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$allowInstanceIdChange:Z

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$params:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "failureMessage"    # Ljava/lang/String;

    .prologue
    .line 1175
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting to server failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$params:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Failure message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1135
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$32;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "responseObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1137
    const-string v3, "GameClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received response for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :try_start_28
    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1141
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 1173
    :goto_3b
    return-void

    .line 1143
    :cond_3c
    const-string v3, "gid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    .local v1, "responseGameId":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 1145
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect game id in response: + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_6c} :catch_6d

    goto :goto_3b

    .line 1169
    .end local v1    # "responseGameId":Ljava/lang/String;
    :catch_6d
    move-exception v0

    .line 1170
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "GameClient"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse JSON response to command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_3b

    .line 1148
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "responseGameId":Ljava/lang/String;
    :cond_8e
    :try_start_8e
    const-string v3, "iid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    .local v2, "responseInstanceId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1150
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    goto :goto_3b

    .line 1154
    :cond_a8
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1155
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/GameClient;->access$1100(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    .line 1167
    :goto_b9
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 1157
    :cond_c6
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$allowInstanceIdChange:Z

    if-nez v3, :cond_d8

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 1158
    :cond_d8
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v4, Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-direct {v4, v2}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/GameClient;->access$302(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 1159
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/GameClient;->access$1100(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    .line 1160
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceIdChanged(Ljava/lang/String;)V

    goto :goto_b9

    .line 1162
    :cond_ed
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored server response to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for incorrect instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_117} :catch_6d

    goto/16 :goto_3b
.end method
