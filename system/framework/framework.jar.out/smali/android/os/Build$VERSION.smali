.class public Landroid/os/Build$VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final CODENAME:Ljava/lang/String;

.field public static final INCREMENTAL:Ljava/lang/String;

.field public static final RELEASE:Ljava/lang/String;

.field public static final RESOURCES_SDK_INT:I

.field public static final SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    const-string/jumbo v1, "ro.build.version.incremental"

    # invokes: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "ro.build.version.release"

    # invokes: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "ro.build.version.sdk"

    # invokes: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "ro.build.version.sdk"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    const-string/jumbo v1, "ro.build.version.codename"

    # invokes: Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Build;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "REL"

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    add-int/2addr v0, v1

    sput v0, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
