.class public final Landroid/provider/CalendarContract$Events;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final CONTENT_EXCEPTION_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1639
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 1647
    const-string v0, "content://com.android.calendar/exception"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 1667
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "cal_sync1"

    aput-object v1, v0, v5

    const-string v1, "cal_sync2"

    aput-object v1, v0, v6

    const-string v1, "cal_sync3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cal_sync4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cal_sync5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cal_sync6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cal_sync7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cal_sync8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cal_sync9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cal_sync10"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "canModifyTimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "canPartiallyUpdate"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "sync_events"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "visible"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 1701
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    const-string v1, "dirty"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mutators"

    aput-object v1, v0, v5

    const-string/jumbo v1, "sync_data1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "sync_data2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "sync_data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sync_data4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "sync_data5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sync_data6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "sync_data7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "sync_data8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sync_data9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "sync_data10"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
