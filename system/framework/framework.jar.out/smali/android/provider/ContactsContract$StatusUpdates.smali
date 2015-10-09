.class public Landroid/provider/ContactsContract$StatusUpdates;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$PresenceColumns;
.implements Landroid/provider/ContactsContract$StatusColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusUpdates"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/status-update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/status-update"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROFILE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5011
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "status_updates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    .line 5016
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "status_updates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/ContactsContract$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/provider/ContactsContract$1;

    .prologue
    .line 5001
    invoke-direct {p0}, Landroid/provider/ContactsContract$StatusUpdates;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 5026
    packed-switch p0, :pswitch_data_0

    .line 5038
    sget v0, Landroid/R$drawable;->presence_offline:I

    :goto_0
    return v0

    .line 5028
    :pswitch_0
    sget v0, Landroid/R$drawable;->presence_online:I

    goto :goto_0

    .line 5031
    :pswitch_1
    sget v0, Landroid/R$drawable;->presence_away:I

    goto :goto_0

    .line 5033
    :pswitch_2
    sget v0, Landroid/R$drawable;->presence_busy:I

    goto :goto_0

    .line 5035
    :pswitch_3
    sget v0, Landroid/R$drawable;->presence_invisible:I

    goto :goto_0

    .line 5026
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final getPresencePrecedence(I)I
    .locals 0
    .param p0, "status"    # I

    .prologue
    .line 5051
    return p0
.end method
