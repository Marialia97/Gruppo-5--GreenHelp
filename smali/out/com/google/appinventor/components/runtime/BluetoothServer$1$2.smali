.class Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;
.super Ljava/lang/Object;
.source "BluetoothServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

.field final synthetic val$bluetoothSocket:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->val$bluetoothSocket:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->val$bluetoothSocket:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothServer;->setConnection(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_11

    .line 155
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->ConnectionAccepted()V

    .line 156
    :goto_10
    return-void

    .line 148
    :catch_11
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->Disconnect()V

    .line 150
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    const/16 v4, 0x1fd

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_10
.end method
