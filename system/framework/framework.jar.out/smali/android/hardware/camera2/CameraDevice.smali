.class public interface abstract Landroid/hardware/camera2/CameraDevice;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraDevice$StateListener;,
        Landroid/hardware/camera2/CameraDevice$CaptureListener;
    }
.end annotation


# static fields
.field public static final TEMPLATE_MANUAL:I = 0x6

.field public static final TEMPLATE_PREVIEW:I = 0x1

.field public static final TEMPLATE_RECORD:I = 0x3

.field public static final TEMPLATE_STILL_CAPTURE:I = 0x2

.field public static final TEMPLATE_VIDEO_SNAPSHOT:I = 0x4

.field public static final TEMPLATE_ZERO_SHUTTER_LAG:I = 0x5


# virtual methods
.method public abstract capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraDevice$CaptureListener;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract configureOutputs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraDevice$CaptureListener;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract stopRepeating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract waitUntilIdle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method
