.class public Landroid/hardware/camera2/utils/BinderHolder;
.super Ljava/lang/Object;
.source "BinderHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/utils/BinderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/BinderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 67
    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/BinderHolder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/camera2/utils/BinderHolder$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 41
    return-void
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 37
    return-void
.end method
