.class Landroid/media/MediaScannerConnection$1;
.super Landroid/media/IMediaScannerListener$Stub;
.source "MediaScannerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>(Landroid/media/MediaScannerConnection;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Landroid/media/MediaScannerConnection$1;->this$0:Landroid/media/MediaScannerConnection;

    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    iget-object v1, p0, Landroid/media/MediaScannerConnection$1;->this$0:Landroid/media/MediaScannerConnection;

    # getter for: Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    invoke-static {v1}, Landroid/media/MediaScannerConnection;->access$000(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    move-result-object v0

    .line 52
    .local v0, "client":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    :cond_0
    return-void
.end method
