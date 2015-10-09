.class Landroid/app/ActivityThread$EventLoggingReporter;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Llibcore/io/EventLogger$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventLoggingReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 4942
    invoke-direct {p0}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs report(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "list"    # [Ljava/lang/Object;

    .prologue
    .line 4945
    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4946
    return-void
.end method
