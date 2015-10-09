.class public Landroid/hardware/Camera$Size;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Landroid/hardware/Camera;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;II)V
    .locals 0
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1690
    iput-object p1, p0, Landroid/hardware/Camera$Size;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1691
    iput p2, p0, Landroid/hardware/Camera$Size;->width:I

    .line 1692
    iput p3, p0, Landroid/hardware/Camera$Size;->height:I

    .line 1693
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1703
    instance-of v2, p1, Landroid/hardware/Camera$Size;

    if-nez v2, :cond_1

    .line 1707
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1706
    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1707
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1711
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
