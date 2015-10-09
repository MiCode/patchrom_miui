.class Landroid/os/CommonClock$TimelineChangedListener;
.super Landroid/os/Binder;
.source "CommonClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineChangedListener"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICommonClockListener"


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method private constructor <init>(Landroid/os/CommonClock;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/CommonClock;Landroid/os/CommonClock$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/CommonClock;
    .param p2, "x1"    # Landroid/os/CommonClock$1;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    packed-switch p1, :pswitch_data_0

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 329
    :pswitch_0
    const-string v2, "android.os.ICommonClockListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 331
    .local v0, "timelineId":J
    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    # getter for: Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/os/CommonClock;->access$000(Landroid/os/CommonClock;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 332
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    # getter for: Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;
    invoke-static {v2}, Landroid/os/CommonClock;->access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    # getter for: Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;
    invoke-static {v2}, Landroid/os/CommonClock;->access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/os/CommonClock$OnTimelineChangedListener;->onTimelineChanged(J)V

    .line 334
    :cond_0
    monitor-exit v3

    .line 335
    const/4 v2, 0x1

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
