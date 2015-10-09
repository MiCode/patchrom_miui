.class public interface abstract Landroid/hardware/camera2/impl/MetadataMarshalClass;
.super Ljava/lang/Object;
.source "MetadataMarshalClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NATIVE_SIZE_DYNAMIC:I = -0x1


# virtual methods
.method public abstract getMarshalingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getNativeSize(I)I
.end method

.method public abstract isNativeTypeSupported(I)Z
.end method

.method public abstract marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            "IZ)I"
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)TT;"
        }
    .end annotation
.end method
