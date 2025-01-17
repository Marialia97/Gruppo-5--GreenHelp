.class public final Landroid/support/v4/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/support/v4/os/CancellationSignal;

    .prologue
    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2b

    .line 76
    if-eqz p6, :cond_1d

    .line 79
    :try_start_8
    invoke-virtual {p6}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    check-cast v1, Landroid/os/CancellationSignal;

    move-object v0, v1

    check-cast v0, Landroid/os/CancellationSignal;

    move-object v7, v0

    .local v7, "cancellationSignalObj":Landroid/os/CancellationSignal;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 81
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1f

    move-result-object v1

    .line 99
    .end local v7    # "cancellationSignalObj":Landroid/os/CancellationSignal;
    :goto_1c
    return-object v1

    .line 79
    :cond_1d
    const/4 v1, 0x0

    goto :goto_c

    .line 83
    :catch_1f
    move-exception v8

    .line 84
    .local v8, "e":Ljava/lang/Exception;
    instance-of v1, v8, Landroid/os/OperationCanceledException;

    if-eqz v1, :cond_2a

    .line 87
    new-instance v1, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v1

    .line 90
    :cond_2a
    throw v8

    .line 96
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2b
    if-eqz p6, :cond_30

    .line 97
    invoke-virtual {p6}, Landroid/support/v4/os/CancellationSignal;->throwIfCanceled()V

    .line 99
    :cond_30
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1c
.end method
