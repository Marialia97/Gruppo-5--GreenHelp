.class public Lcom/google/appinventor/components/runtime/NxtTouchSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtTouchSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a touch sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field private handler:Landroid/os/Handler;

.field private pressedEventEnabled:Z

.field private previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

.field private releasedEventEnabled:Z

.field private final sensorReader:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "NxtTouchSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    .line 54
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .line 55
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    .line 80
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->SensorPort(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->PressedEventEnabled(Z)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->ReleasedEventEnabled(Z)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .registers 8
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    iget v5, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:I

    invoke-virtual {p0, p1, v5}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v0

    .line 119
    .local v0, "returnPackage":[B
    if-eqz v0, :cond_25

    .line 120
    const/4 v5, 0x4

    invoke-virtual {p0, v0, v5}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getBooleanValueFromBytes([BI)Z

    move-result v2

    .line 121
    .local v2, "valid":Z
    if-eqz v2, :cond_25

    .line 122
    const/16 v5, 0xc

    invoke-virtual {p0, v0, v5}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getSWORDValueFromBytes([BI)I

    move-result v1

    .line 123
    .local v1, "scaledValue":I
    new-instance v5, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    if-eqz v1, :cond_1c

    move v3, v4

    :cond_1c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    move-object v3, v5

    .line 128
    .end local v1    # "scaledValue":I
    .end local v2    # "valid":Z
    :goto_24
    return-object v3

    :cond_25
    new-instance v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    move-object v3, v4

    goto :goto_24
.end method

.method private isHandlerNeeded()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public IsPressed()Z
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the touch sensor is pressed."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v0, "IsPressed"

    .line 104
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 114
    :cond_9
    :goto_9
    return v2

    .line 108
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 109
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Boolean;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_9

    .line 110
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_9
.end method

.method public Pressed()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been pressed."
    .end annotation

    .prologue
    .line 165
    const-string v0, "Pressed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public PressedEventEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v1

    .line 151
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    .line 153
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    .line 154
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    .line 155
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    :cond_15
    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    .line 158
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .line 159
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_24
    return-void
.end method

.method public PressedEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Pressed event should fire when the touch sensor is pressed."
    .end annotation

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    return v0
.end method

.method public Released()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been released."
    .end annotation

    .prologue
    .line 202
    const-string v0, "Released"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public ReleasedEventEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v1

    .line 188
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    .line 190
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    .line 191
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    .line 192
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    :cond_15
    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    .line 195
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .line 196
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_24
    return-void
.end method

.method public ReleasedEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Released event should fire when the touch sensor is released."
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    return v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .registers 2
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setSensorPort(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 87
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:I

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setInputMode(Ljava/lang/String;III)V

    .line 88
    return-void
.end method

.method public onDelete()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 215
    return-void
.end method
