.class public final enum Lcom/google/appinventor/components/common/ComponentCategory;
.super Ljava/lang/Enum;
.source "ComponentCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/ComponentCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

.field private static final DOC_MAP:Ljava/util/Map;
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

.field public static final enum EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "USERINTERFACE"

    const-string v2, "User Interface"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 51
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "LAYOUT"

    const-string v2, "Layout"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 52
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "MEDIA"

    const-string v2, "Media"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 53
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "ANIMATION"

    const-string v2, "Drawing and Animation"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 54
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "MAPS"

    const-string v2, "Maps"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 55
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "SENSORS"

    const/4 v2, 0x5

    const-string v3, "Sensors"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 56
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "SOCIAL"

    const/4 v2, 0x6

    const-string v3, "Social"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 57
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "STORAGE"

    const/4 v2, 0x7

    const-string v3, "Storage"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 58
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "CONNECTIVITY"

    const/16 v2, 0x8

    const-string v3, "Connectivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 59
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "LEGOMINDSTORMS"

    const/16 v2, 0x9

    const-string v3, "LEGO\u00ae MINDSTORMS\u00ae"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 60
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "EXPERIMENTAL"

    const/16 v2, 0xa

    const-string v3, "Experimental"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 61
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "EXTENSION"

    const/16 v2, 0xb

    const-string v3, "Extension"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 62
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "INTERNAL"

    const/16 v2, 0xc

    const-string v3, "For internal use only"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 64
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "UNINITIALIZED"

    const/16 v2, 0xd

    const-string v3, "Uninitialized"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 48
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->$VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    .line 71
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "User Interface"

    const-string v2, "userinterface"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Layout"

    const-string v2, "layout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Media"

    const-string v2, "media"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Drawing and Animation"

    const-string v2, "animation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Maps"

    const-string v2, "maps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Sensors"

    const-string v2, "sensors"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Social"

    const-string v2, "social"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Storage"

    const-string v2, "storage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Connectivity"

    const-string v2, "connectivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string v2, "legomindstorms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Experimental"

    const-string v2, "experimental"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Extension"

    const-string v2, "extension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "categoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ComponentCategory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ComponentCategory;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->$VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ComponentCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method


# virtual methods
.method public getDocName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    return-object v0
.end method
