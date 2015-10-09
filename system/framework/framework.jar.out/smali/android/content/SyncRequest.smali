.class public Landroid/content/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncRequest"


# instance fields
.field private final mAccountToSync:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mComponentInfo:Landroid/content/ComponentName;

.field private final mDisallowMetered:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsAuthority:Z

.field private final mIsExpedited:Z

.field private final mIsPeriodic:Z

.field private final mRxBytes:J

.field private final mSyncFlexTimeSecs:J

.field private final mSyncRunTimeSecs:J

.field private final mTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Landroid/content/SyncRequest$1;

    invoke-direct {v0}, Landroid/content/SyncRequest$1;-><init>()V

    sput-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/SyncRequest$Builder;)V
    .locals 5
    .param p1, "b"    # Landroid/content/SyncRequest$Builder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$100(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    .line 202
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$200(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    .line 203
    # getter for: Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$300(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    .line 204
    # getter for: Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$400(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    .line 205
    # getter for: Landroid/content/SyncRequest$Builder;->mComponentName:Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$500(Landroid/content/SyncRequest$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    .line 206
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncType:I
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$600(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    .line 207
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncTarget:I
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$700(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    .line 208
    # getter for: Landroid/content/SyncRequest$Builder;->mExpedited:Z
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$800(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    .line 209
    new-instance v0, Landroid/os/Bundle;

    # getter for: Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$900(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    .line 212
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    # getter for: Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1000(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 213
    # getter for: Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1100(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    .line 214
    # getter for: Landroid/content/SyncRequest$Builder;->mTxBytes:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1200(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncRequest;->mTxBytes:J

    .line 215
    # getter for: Landroid/content/SyncRequest$Builder;->mRxBytes:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1300(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncRequest;->mRxBytes:J

    .line 216
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v1, v2

    .line 207
    goto :goto_1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mTxBytes:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncRequest;->mRxBytes:J

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    .line 188
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_4

    .line 189
    iput-object v5, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    .line 190
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    .line 197
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 182
    goto :goto_0

    :cond_1
    move v0, v2

    .line 183
    goto :goto_1

    :cond_2
    move v0, v2

    .line 186
    goto :goto_2

    :cond_3
    move v1, v2

    .line 187
    goto :goto_3

    .line 193
    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    .line 194
    iput-object v5, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    .line 195
    iput-object v5, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/SyncRequest$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/content/SyncRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/SyncRequest;->hasAuthority()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot getAccount() for a sync that does notspecify an authority."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/SyncRequest;->hasAuthority()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot getProvider() for a sync that does notspecify a provider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncFlexTime()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method public getSyncRunTime()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method public hasAuthority()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    return v0
.end method

.method public isExpedited()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 162
    iget-wide v3, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-wide v3, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-wide v3, p0, Landroid/content/SyncRequest;->mTxBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-wide v3, p0, Landroid/content/SyncRequest;->mRxBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 172
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    :cond_1
    move v0, v2

    .line 165
    goto :goto_1

    :cond_2
    move v0, v2

    .line 168
    goto :goto_2

    :cond_3
    move v1, v2

    .line 169
    goto :goto_3

    .line 174
    :cond_4
    iget-object v0, p0, Landroid/content/SyncRequest;->mComponentInfo:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_4
.end method
