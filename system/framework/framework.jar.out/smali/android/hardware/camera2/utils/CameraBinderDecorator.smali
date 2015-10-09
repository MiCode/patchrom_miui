.class public Landroid/hardware/camera2/utils/CameraBinderDecorator;
.super Ljava/lang/Object;
.source "CameraBinderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CameraBinderDecorator$1;,
        Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x11

.field public static final BAD_VALUE:I = -0x16

.field public static final DEAD_OBJECT:I = -0x20

.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENODEV:I = -0x13

.field public static final EOPNOTSUPP:I = -0x5f

.field public static final EUSERS:I = -0x57

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>(Landroid/hardware/camera2/utils/CameraBinderDecorator$1;)V

    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/Decorator;->newInstance(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
