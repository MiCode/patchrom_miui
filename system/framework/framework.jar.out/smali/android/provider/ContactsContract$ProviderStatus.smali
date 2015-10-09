.class public final Landroid/provider/ContactsContract$ProviderStatus;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderStatus"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/provider_status"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_CHANGING_LOCALE:I = 0x3

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NO_ACCOUNTS_NO_CONTACTS:I = 0x4

.field public static final STATUS_UPGRADE_OUT_OF_MEMORY:I = 0x2

.field public static final STATUS_UPGRADING:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7557
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "provider_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7549
    return-void
.end method
