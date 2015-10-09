.class Landroid/media/videoeditor/MediaArtistNativeHelper$1;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"

# interfaces
.implements Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field final synthetic val$result:[Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;[Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 3772
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$1;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$1;->val$result:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .prologue
    .line 3774
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$1;->val$result:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3775
    return-void
.end method
