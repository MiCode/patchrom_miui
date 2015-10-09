.class public Landroid/hardware/camera2/CameraMetadata$Key;
.super Ljava/lang/Object;
.source "CameraMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasTag:Z

.field private final mName:Ljava/lang/String;

.field private mTag:I

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key needs a valid name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type needs to be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iput-object p1, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mType:Ljava/lang/Class;

    .line 147
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 161
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    if-ne p0, p1, :cond_0

    .line 162
    const/4 v1, 0x1

    .line 171
    :goto_0
    return v1

    .line 165
    :cond_0
    instance-of v1, p1, Landroid/hardware/camera2/CameraMetadata$Key;

    if-nez v1, :cond_1

    .line 166
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 169
    check-cast v0, Landroid/hardware/camera2/CameraMetadata$Key;

    .line 171
    .local v0, "lhs":Landroid/hardware/camera2/CameraMetadata$Key;
    iget-object v1, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mHasTag:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mTag:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mHasTag:Z

    .line 191
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mTag:I

    return v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Landroid/hardware/camera2/CameraMetadata$Key;, "Landroid/hardware/camera2/CameraMetadata$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CameraMetadata$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
