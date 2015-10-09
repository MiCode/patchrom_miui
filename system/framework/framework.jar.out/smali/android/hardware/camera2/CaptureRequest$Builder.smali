.class public final Landroid/hardware/camera2/CaptureRequest$Builder;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 2
    .param p1, "template"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest$1;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 227
    return-void
.end method


# virtual methods
.method public addTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$200(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public build()Landroid/hardware/camera2/CaptureRequest;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$1;)V

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "key":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$300(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$300(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .prologue
    .line 252
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$200(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public set(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "key":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # getter for: Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v0}, Landroid/hardware/camera2/CaptureRequest;->access$300(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 292
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest$Builder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    # setter for: Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->access$402(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method
