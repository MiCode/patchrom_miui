.class final Landroid/app/job/JobParameters$1;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/job/JobParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobParameters;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    new-instance v0, Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;Landroid/app/job/JobParameters$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/job/JobParameters$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/job/JobParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/job/JobParameters;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 106
    new-array v0, p1, [Landroid/app/job/JobParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/job/JobParameters$1;->newArray(I)[Landroid/app/job/JobParameters;

    move-result-object v0

    return-object v0
.end method
