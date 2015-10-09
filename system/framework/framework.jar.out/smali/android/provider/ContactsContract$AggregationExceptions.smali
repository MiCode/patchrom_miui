.class public final Landroid/provider/ContactsContract$AggregationExceptions;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregationExceptions"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/aggregation_exception"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/aggregation_exception"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ID1:Ljava/lang/String; = "raw_contact_id1"

.field public static final RAW_CONTACT_ID2:Ljava/lang/String; = "raw_contact_id2"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_AUTOMATIC:I = 0x0

.field public static final TYPE_KEEP_SEPARATE:I = 0x2

.field public static final TYPE_KEEP_TOGETHER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7330
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "aggregation_exceptions"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
