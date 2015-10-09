.class public Landroid/os/ParcelableParcel;
.super Ljava/lang/Object;
.source "ParcelableParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/os/ParcelableParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mClassLoader:Ljava/lang/ClassLoader;

.field final mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/os/ParcelableParcel$1;

    invoke-direct {v0}, Landroid/os/ParcelableParcel$1;-><init>()V

    sput-object v0, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    .line 34
    iput-object p2, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 36
    .local v1, "size":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    .local v0, "pos":I
    iget-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {v2, p1, v3, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 38
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    .line 29
    iput-object p1, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getParcel()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 59
    return-void
.end method
