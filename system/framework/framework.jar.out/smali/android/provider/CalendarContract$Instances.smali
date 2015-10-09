.class public final Landroid/provider/CalendarContract$Instances;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instances"
.end annotation


# static fields
.field public static final BEGIN:Ljava/lang/String; = "begin"

.field public static final CONTENT_BY_DAY_URI:Landroid/net/Uri;

.field public static final CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

.field public static final CONTENT_SEARCH_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "begin ASC"

.field public static final END:Ljava/lang/String; = "end"

.field public static final END_DAY:Ljava/lang/String; = "endDay"

.field public static final END_MINUTE:Ljava/lang/String; = "endMinute"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final START_DAY:Ljava/lang/String; = "startDay"

.field public static final START_MINUTE:Ljava/lang/String; = "startMinute"

.field private static final WHERE_CALENDARS_ARGS:[Ljava/lang/String;

.field private static final WHERE_CALENDARS_SELECTED:Ljava/lang/String; = "visible=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1727
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/CalendarContract$Instances;->WHERE_CALENDARS_ARGS:[Ljava/lang/String;

    .line 1796
    const-string v0, "content://com.android.calendar/instances/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    .line 1803
    const-string v0, "content://com.android.calendar/instances/whenbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 1810
    const-string v0, "content://com.android.calendar/instances/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    .line 1817
    const-string v0, "content://com.android.calendar/instances/searchbyday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;JJ)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J

    .prologue
    .line 1753
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1754
    .local v6, "builder":Landroid/net/Uri$Builder;
    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1755
    invoke-static {v6, p4, p5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1756
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "visible=?"

    sget-object v4, Landroid/provider/CalendarContract$Instances;->WHERE_CALENDARS_ARGS:[Ljava/lang/String;

    const-string v5, "begin ASC"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 1782
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1783
    .local v6, "builder":Landroid/net/Uri$Builder;
    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1784
    invoke-static {v6, p4, p5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1785
    invoke-virtual {v6, p6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1786
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "visible=?"

    sget-object v4, Landroid/provider/CalendarContract$Instances;->WHERE_CALENDARS_ARGS:[Ljava/lang/String;

    const-string v5, "begin ASC"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
