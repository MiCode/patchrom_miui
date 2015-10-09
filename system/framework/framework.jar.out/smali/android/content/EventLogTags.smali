.class public Landroid/content/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BINDER_SAMPLE:I = 0xcb24

.field public static final CONTENT_QUERY_SAMPLE:I = 0xcb22

.field public static final CONTENT_UPDATE_SAMPLE:I = 0xcb23


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBinderSample(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 4
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "methodNum"    # I
    .param p2, "time"    # I
    .param p3, "blockingPackage"    # Ljava/lang/String;
    .param p4, "samplePercent"    # I

    .prologue
    .line 31
    const v0, 0xcb24

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 32
    return-void
.end method

.method public static writeContentQuerySample(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "sortorder"    # Ljava/lang/String;
    .param p4, "time"    # I
    .param p5, "blockingPackage"    # Ljava/lang/String;
    .param p6, "samplePercent"    # I

    .prologue
    .line 23
    const v0, 0xcb22

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 24
    return-void
.end method

.method public static writeContentUpdateSample(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "time"    # I
    .param p4, "blockingPackage"    # Ljava/lang/String;
    .param p5, "samplePercent"    # I

    .prologue
    .line 27
    const v0, 0xcb23

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 28
    return-void
.end method
