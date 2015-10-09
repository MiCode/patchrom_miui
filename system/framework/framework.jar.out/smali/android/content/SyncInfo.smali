.class public Landroid/content/SyncInfo;
.super Ljava/lang/Object;
.source "SyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final authorityId:I

.field public final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/content/SyncInfo$1;

    invoke-direct {v0}, Landroid/content/SyncInfo$1;-><init>()V

    sput-object v0, Landroid/content/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;J)V
    .locals 0
    .param p1, "authorityId"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 52
    iput-object p2, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 53
    iput-object p3, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 54
    iput-wide p4, p0, Landroid/content/SyncInfo;->startTime:J

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/SyncInfo;)V
    .locals 3
    .param p1, "other"    # Landroid/content/SyncInfo;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget v0, p1, Landroid/content/SyncInfo;->authorityId:I

    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 60
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 61
    iget-object v0, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 62
    iget-wide v0, p1, Landroid/content/SyncInfo;->startTime:J

    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 81
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1}, Landroid/accounts/Account;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    .line 84
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget v0, p0, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    return-void
.end method
