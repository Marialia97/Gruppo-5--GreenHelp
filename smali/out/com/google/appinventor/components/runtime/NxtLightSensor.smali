.class public Lcom/google/appinventor/components/runtime/NxtLightSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtLightSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a light sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x100

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "3"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x2ff


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private generateLight:Z

.field private handler:Landroid/os/Handler;

.field private previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "NxtLightSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    .line 59
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 60
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    .line 95
    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->SensorPort(Ljava/lang/String;)V

    .line 96
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BottomOfRange(I)V

    .line 97
    const/16 v0, 0x2ff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->TopOfRange(I)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRangeEventEnabled(Z)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRangeEventEnabled(Z)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRangeEventEnabled(Z)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->GenerateLight(Z)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/NxtLightSensor;Lcom/google/appinventor/components/runtime/NxtLightSensor$State;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .registers 8
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:I

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v1

    .line 163
    .local v1, "returnPackage":[B
    if-eqz v1, :cond_20

    .line 164
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getBooleanValueFromBytes([BI)Z

    move-result v2

    .line 165
    .local v2, "valid":Z
    if-eqz v2, :cond_20

    .line 166
    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getUWORDValueFromBytes([BI)I

    move-result v0

    .line 167
    .local v0, "normalizedValue":I
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    .line 172
    .end local v0    # "normalizedValue":I
    .end local v2    # "valid":Z
    :goto_1f
    return-object v3

    :cond_20
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_1f
.end method

.method private isHandlerNeeded()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public AboveRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range."
    .end annotation

    .prologue
    .line 329
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 315
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    .line 317
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 318
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    .line 319
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    :cond_15
    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    .line 322
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 323
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    :cond_24
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range."
    .end annotation

    .prologue
    .line 255
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 241
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    .line 243
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 244
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    .line 245
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    :cond_15
    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    .line 248
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 249
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    :cond_24
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 183
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .registers 3
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 194
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    .line 195
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 196
    return-void
.end method

.method public GenerateLight(Z)V
    .registers 3
    .param p1, "generateLight"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 140
    const-string v0, "GenerateLight"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->initializeSensor(Ljava/lang/String;)V

    .line 142
    :cond_13
    return-void
.end method

.method public GenerateLight()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the light sensor should generate light."
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    return v0
.end method

.method public GetLightLevel()I
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read."
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 147
    const-string v0, "GetLightLevel"

    .line 148
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 158
    :cond_9
    :goto_9
    return v2

    .line 152
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 153
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_9

    .line 154
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_9
.end method

.method public SensorPort(Ljava/lang/String;)V
    .registers 2
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setSensorPort(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public TopOfRange()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 206
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .registers 3
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "767"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 217
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    .line 218
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 219
    return-void
.end method

.method public WithinRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range."
    .end annotation

    .prologue
    .line 292
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 278
    .local v1, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    .line 280
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 281
    .local v0, "handlerIsNeeded":Z
    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    .line 282
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    :cond_15
    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    .line 285
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 286
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    :cond_24
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 106
    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:I

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    :goto_7
    const/16 v2, 0x80

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setInputMode(Ljava/lang/String;III)V

    .line 109
    return-void

    .line 106
    :cond_d
    const/4 v0, 0x6

    goto :goto_7
.end method

.method public onDelete()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 342
    return-void
.end method
