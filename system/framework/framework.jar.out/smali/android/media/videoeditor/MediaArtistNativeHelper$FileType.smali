.class public final Landroid/media/videoeditor/MediaArtistNativeHelper$FileType;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FileType"
.end annotation


# static fields
.field public static final AMR:I = 0x2

.field public static final GIF:I = 0x7

.field public static final JPG:I = 0x5

.field public static final M4V:I = 0xa

.field public static final MP3:I = 0x3

.field public static final MP4:I = 0x1

.field public static final PCM:I = 0x4

.field public static final PNG:I = 0x8

.field public static final THREE_GPP:I = 0x0

.field public static final UNSUPPORTED:I = 0xff


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$FileType;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
