.class public Landroid/support/v4/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    .line 613
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    .line 614
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    .line 615
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    .line 616
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentReader;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 608
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentReader;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v4, 0x20

    .line 705
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_6a

    .line 706
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 708
    .local v0, "c":C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_15

    .line 709
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 710
    :cond_15
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1f

    .line 711
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 712
    :cond_1f
    const/16 v2, 0x26

    if-ne v0, v2, :cond_29

    .line 713
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 714
    :cond_29
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_2f

    if-ge v0, v4, :cond_4c

    .line 715
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 716
    :cond_4c
    if-ne v0, v4, :cond_66

    .line 717
    :goto_4e
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_62

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_62

    .line 718
    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 722
    :cond_62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 724
    :cond_66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 727
    .end local v0    # "c":C
    :cond_6a
    return-void
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 869
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_6

    .line 877
    :goto_5
    return-object v2

    .line 871
    :cond_6
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 873
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_5

    .line 874
    :catch_13
    move-exception v0

    .line 875
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "IntentReader"

    const-string v4, "Could not retrieve icon for calling activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 891
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 899
    :goto_5
    return-object v2

    .line 893
    :cond_6
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 895
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_5

    .line 896
    :catch_13
    move-exception v0

    .line 897
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "IntentReader"

    const-string v4, "Could not retrieve icon for calling application"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 921
    :goto_5
    return-object v2

    .line 915
    :cond_6
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 917
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_5

    .line 918
    :catch_18
    move-exception v0

    .line 919
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "IntentReader"

    const-string v4, "Could not retrieve label for calling application"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 801
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 685
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_18

    .line 687
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 688
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_19

    .line 689
    check-cast v2, Landroid/text/Spanned;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    .line 700
    :cond_18
    :goto_18
    return-object v1

    .line 690
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_19
    if-eqz v2, :cond_18

    .line 691
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_26

    .line 692
    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 694
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/support/v4/app/ShareCompat$IntentReader;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 696
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method

.method public getStream()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 741
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 754
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 755
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 757
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    .line 758
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 761
    :goto_20
    return-object v0

    .line 760
    :cond_21
    if-nez p1, :cond_2e

    .line 761
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_20

    .line 763
    :cond_2e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream items available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getStreamCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamCount()I
    .registers 3

    .prologue
    .line 775
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 776
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 778
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 779
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 781
    :goto_1e
    return v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_1e

    :cond_2b
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3

    .prologue
    .line 821
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultipleShare()Z
    .registers 3

    .prologue
    .line 651
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShareIntent()Z
    .registers 3

    .prologue
    .line 627
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public isSingleShare()Z
    .registers 3

    .prologue
    .line 640
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
