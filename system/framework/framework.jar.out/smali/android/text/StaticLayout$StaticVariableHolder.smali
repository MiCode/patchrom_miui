.class Landroid/text/StaticLayout$StaticVariableHolder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticVariableHolder"
.end annotation


# static fields
.field static final ADVANCED_LINE_BREAKING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v1, "persist.sys.adv_line_breaking"

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/StaticLayout$StaticVariableHolder;->ADVANCED_LINE_BREAKING:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
