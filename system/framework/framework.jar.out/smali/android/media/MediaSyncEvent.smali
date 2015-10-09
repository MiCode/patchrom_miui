.class public Landroid/media/MediaSyncEvent;
.super Ljava/lang/Object;
.source "MediaSyncEvent.java"


# static fields
.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1


# instance fields
.field private mAudioSession:I

.field private final mType:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    .line 69
    iput p1, p0, Landroid/media/MediaSyncEvent;->mType:I

    .line 70
    return-void
.end method

.method public static createEvent(I)Landroid/media/MediaSyncEvent;
    .locals 3
    .param p0, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Landroid/media/MediaSyncEvent;->isValidType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not a valid MediaSyncEvent type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Landroid/media/MediaSyncEvent;

    invoke-direct {v0, p0}, Landroid/media/MediaSyncEvent;-><init>(I)V

    return-object v0
.end method

.method private static isValidType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 114
    packed-switch p0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 117
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/media/MediaSyncEvent;->mType:I

    return v0
.end method

.method public setAudioSessionId(I)Landroid/media/MediaSyncEvent;
    .locals 3
    .param p1, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    if-lez p1, :cond_0

    .line 87
    iput p1, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    .line 91
    return-object p0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid session ID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
