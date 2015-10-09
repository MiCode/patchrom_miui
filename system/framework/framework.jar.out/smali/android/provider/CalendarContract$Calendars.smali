.class public final Landroid/provider/CalendarContract$Calendars;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Calendars"
.end annotation


# static fields
.field public static final CALENDAR_LOCATION:Ljava/lang/String; = "calendar_location"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "calendar_displayName"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 693
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 720
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mutators"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "maxReminders"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "canModifyTimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "canPartiallyUpdate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "calendar_location"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "cal_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cal_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cal_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cal_sync4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cal_sync5"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cal_sync6"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cal_sync7"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cal_sync8"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "cal_sync9"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "cal_sync10"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/CalendarContract$Calendars;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
