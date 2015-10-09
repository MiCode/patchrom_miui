.class public final Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSamplingFrequency"
.end annotation


# static fields
.field public static final FREQ_11025:I = 0x2b11

.field public static final FREQ_12000:I = 0x2ee0

.field public static final FREQ_16000:I = 0x3e80

.field public static final FREQ_22050:I = 0x5622

.field public static final FREQ_24000:I = 0x5dc0

.field public static final FREQ_32000:I = 0x7d00

.field public static final FREQ_44100:I = 0xac44

.field public static final FREQ_48000:I = 0xbb80

.field public static final FREQ_8000:I = 0x1f40

.field public static final FREQ_DEFAULT:I


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
