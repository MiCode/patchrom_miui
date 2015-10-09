.class public final Landroid/provider/CalendarContract;
.super Ljava/lang/Object;
.source "CalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CalendarContract$EventsRawTimes;,
        Landroid/provider/CalendarContract$EventsRawTimesColumns;,
        Landroid/provider/CalendarContract$SyncState;,
        Landroid/provider/CalendarContract$ExtendedProperties;,
        Landroid/provider/CalendarContract$ExtendedPropertiesColumns;,
        Landroid/provider/CalendarContract$Colors;,
        Landroid/provider/CalendarContract$ColorsColumns;,
        Landroid/provider/CalendarContract$CalendarAlerts;,
        Landroid/provider/CalendarContract$CalendarAlertsColumns;,
        Landroid/provider/CalendarContract$Reminders;,
        Landroid/provider/CalendarContract$RemindersColumns;,
        Landroid/provider/CalendarContract$EventDays;,
        Landroid/provider/CalendarContract$EventDaysColumns;,
        Landroid/provider/CalendarContract$CalendarMetaData;,
        Landroid/provider/CalendarContract$CalendarMetaDataColumns;,
        Landroid/provider/CalendarContract$CalendarCache;,
        Landroid/provider/CalendarContract$CalendarCacheColumns;,
        Landroid/provider/CalendarContract$Instances;,
        Landroid/provider/CalendarContract$Events;,
        Landroid/provider/CalendarContract$EventsEntity;,
        Landroid/provider/CalendarContract$EventsColumns;,
        Landroid/provider/CalendarContract$Attendees;,
        Landroid/provider/CalendarContract$AttendeesColumns;,
        Landroid/provider/CalendarContract$Calendars;,
        Landroid/provider/CalendarContract$CalendarEntity;,
        Landroid/provider/CalendarContract$CalendarColumns;,
        Landroid/provider/CalendarContract$SyncColumns;,
        Landroid/provider/CalendarContract$CalendarSyncColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_LOCAL:Ljava/lang/String; = "LOCAL"

.field public static final ACTION_EVENT_REMINDER:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field public static final ACTION_HANDLE_CUSTOM_EVENT:Ljava/lang/String; = "android.provider.calendar.action.HANDLE_CUSTOM_EVENT"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_CUSTOM_APP_URI:Ljava/lang/String; = "customAppUri"

.field public static final EXTRA_EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final EXTRA_EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EXTRA_EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field private static final TAG:Ljava/lang/String; = "Calendar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "content://com.android.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
