.class Landroid/content/res/MiuiResources$PreloadDrawableSource;
.super Ljava/lang/Object;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadDrawableSource"
.end annotation


# instance fields
.field mCookie:I

.field mResourcePath:Ljava/lang/String;

.field mThemePath:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/res/MiuiResources;


# direct methods
.method constructor <init>(Landroid/content/res/MiuiResources;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "cookie"    # I
    .param p3, "resourcePath"    # Ljava/lang/String;
    .param p4, "themePath"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->this$0:Landroid/content/res/MiuiResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p2, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mCookie:I

    .line 70
    iput-object p3, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 72
    return-void
.end method
