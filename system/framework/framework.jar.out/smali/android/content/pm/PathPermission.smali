.class public Landroid/content/pm/PathPermission;
.super Landroid/os/PatternMatcher;
.source "PathPermission.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mReadPermission:Ljava/lang/String;

.field private final mWritePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/content/pm/PathPermission$1;

    invoke-direct {v0}, Landroid/content/pm/PathPermission$1;-><init>()V

    sput-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "readPermission"    # Ljava/lang/String;
    .param p4, "writePermission"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getReadPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getWritePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
