.class public final Landroid/media/videoeditor/MediaArtistNativeHelper$AudioFormat;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioFormat"
.end annotation


# static fields
.field public static final AAC:I = 0x2

.field public static final AAC_PLUS:I = 0x3

.field public static final AMR_NB:I = 0x1

.field public static final ENHANCED_AAC_PLUS:I = 0x4

.field public static final EVRC:I = 0x6

.field public static final MP3:I = 0x5

.field public static final NO_AUDIO:I = 0x0

.field public static final NULL_AUDIO:I = 0xfe

.field public static final PCM:I = 0x7

.field public static final UNSUPPORTED_AUDIO:I = 0xff


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioFormat;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
