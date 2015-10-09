.class public Landroid/app/backup/RestoreSet;
.super Ljava/lang/Object;
.source "RestoreSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/backup/RestoreSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public device:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public token:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/app/backup/RestoreSet$1;

    invoke-direct {v0}, Landroid/app/backup/RestoreSet$1;-><init>()V

    sput-object v0, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/RestoreSet;->token:J

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreSet$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/backup/RestoreSet$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/backup/RestoreSet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_dev"    # Ljava/lang/String;
    .param p3, "_token"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    .line 56
    iput-wide p3, p0, Landroid/app/backup/RestoreSet;->token:J

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-wide v0, p0, Landroid/app/backup/RestoreSet;->token:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    return-void
.end method
