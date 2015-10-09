.class public Landroid/media/videoeditor/VideoEditorProfile;
.super Ljava/lang/Object;
.source "VideoEditorProfile.java"


# instance fields
.field public maxInputVideoFrameHeight:I

.field public maxInputVideoFrameWidth:I

.field public maxOutputVideoFrameHeight:I

.field public maxOutputVideoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->native_init()V

    .line 37
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "inputWidth"    # I
    .param p2, "inputHeight"    # I
    .param p3, "outputWidth"    # I
    .param p4, "outputHeight"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameWidth:I

    .line 110
    iput p2, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxInputVideoFrameHeight:I

    .line 111
    iput p3, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    .line 112
    iput p4, p0, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    .line 113
    return-void
.end method

.method public static get()Landroid/media/videoeditor/VideoEditorProfile;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_profile()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v0

    return-object v0
.end method

.method public static getExportLevel(I)I
    .locals 4
    .param p0, "vidCodec"    # I

    .prologue
    .line 88
    const/4 v0, -0x1

    .line 90
    .local v0, "level":I
    packed-switch p0, :pswitch_data_0

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video codec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    invoke-static {p0}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_export_level(I)I

    move-result v0

    .line 100
    return v0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getExportProfile(I)I
    .locals 4
    .param p0, "vidCodec"    # I

    .prologue
    .line 69
    const/4 v0, -0x1

    .line 71
    .local v0, "profile":I
    packed-switch p0, :pswitch_data_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video codec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :pswitch_0
    invoke-static {p0}, Landroid/media/videoeditor/VideoEditorProfile;->native_get_videoeditor_export_profile(I)I

    move-result v0

    .line 81
    return v0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final native native_get_videoeditor_export_level(I)I
.end method

.method private static final native native_get_videoeditor_export_profile(I)I
.end method

.method private static final native native_get_videoeditor_profile()Landroid/media/videoeditor/VideoEditorProfile;
.end method

.method private static final native native_init()V
.end method
