.class Landroid/content/pm/PackageHideManager$AppHideItem;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageHideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppHideItem"
.end annotation


# static fields
.field public static final PATH_DILIMITER:Ljava/lang/String; = ";"


# instance fields
.field isHide:Z

.field packageName:Ljava/lang/String;

.field pathArray:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHide"    # Z
    .param p3, "path"    # [Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    .line 57
    iput-object p3, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getJoinPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ";"

    iget-object v1, p0, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
