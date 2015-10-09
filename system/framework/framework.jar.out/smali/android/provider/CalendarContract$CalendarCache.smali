.class public final Landroid/provider/CalendarContract$CalendarCache;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/CalendarContract$CalendarCacheColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarCache"
.end annotation


# static fields
.field public static final KEY_TIMEZONE_INSTANCES:Ljava/lang/String; = "timezoneInstances"

.field public static final KEY_TIMEZONE_INSTANCES_PREVIOUS:Ljava/lang/String; = "timezoneInstancesPrevious"

.field public static final KEY_TIMEZONE_TYPE:Ljava/lang/String; = "timezoneType"

.field public static final TIMEZONE_TYPE_AUTO:Ljava/lang/String; = "auto"

.field public static final TIMEZONE_TYPE_HOME:Ljava/lang/String; = "home"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1893
    const-string v0, "content://com.android.calendar/properties"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
