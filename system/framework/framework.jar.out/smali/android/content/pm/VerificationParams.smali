.class public Landroid/content/pm/VerificationParams;
.super Ljava/lang/Object;
.source "VerificationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_UID:I = -0x1

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "VerificationParams{"


# instance fields
.field private mInstallerUid:I

.field private final mManifestDigest:Landroid/content/pm/ManifestDigest;

.field private final mOriginatingURI:Landroid/net/Uri;

.field private final mOriginatingUid:I

.field private final mReferrer:Landroid/net/Uri;

.field private final mVerificationURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Landroid/content/pm/VerificationParams$1;

    invoke-direct {v0}, Landroid/content/pm/VerificationParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V
    .locals 1
    .param p1, "verificationURI"    # Landroid/net/Uri;
    .param p2, "originatingURI"    # Landroid/net/Uri;
    .param p3, "referrer"    # Landroid/net/Uri;
    .param p4, "originatingUid"    # I
    .param p5, "manifestDigest"    # Landroid/content/pm/ManifestDigest;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    .line 74
    iput-object p2, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    .line 75
    iput-object p3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    .line 76
    iput p4, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    .line 77
    iput-object p5, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    .line 219
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    .line 220
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    .line 222
    const-class v0, Landroid/content/pm/ManifestDigest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ManifestDigest;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerificationParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/VerificationParams$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/pm/VerificationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    instance-of v3, p1, Landroid/content/pm/VerificationParams;

    if-nez v3, :cond_2

    move v1, v2

    .line 123
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 126
    check-cast v0, Landroid/content/pm/VerificationParams;

    .line 128
    .local v0, "other":Landroid/content/pm/VerificationParams;
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 129
    iget-object v3, v0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-eqz v3, :cond_4

    move v1, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_3
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    iget-object v4, v0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 133
    goto :goto_0

    .line 136
    :cond_4
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-nez v3, :cond_5

    .line 137
    iget-object v3, v0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-eqz v3, :cond_6

    move v1, v2

    .line 138
    goto :goto_0

    .line 140
    :cond_5
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    iget-object v4, v0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 141
    goto :goto_0

    .line 144
    :cond_6
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-nez v3, :cond_7

    .line 145
    iget-object v3, v0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-eqz v3, :cond_8

    move v1, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_7
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    iget-object v4, v0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 149
    goto :goto_0

    .line 152
    :cond_8
    iget v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    iget v4, v0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 153
    goto :goto_0

    .line 156
    :cond_9
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    if-nez v3, :cond_a

    .line 157
    iget-object v3, v0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    if-eqz v3, :cond_b

    move v1, v2

    .line 158
    goto :goto_0

    .line 160
    :cond_a
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    iget-object v4, v0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v3, v4}, Landroid/content/pm/ManifestDigest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 161
    goto :goto_0

    .line 164
    :cond_b
    iget v3, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    iget v4, v0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 165
    goto :goto_0
.end method

.method public getInstallerUid()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    return v0
.end method

.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    return-object v0
.end method

.method public getOriginatingURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getOriginatingUid()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    return v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    return-object v0
.end method

.method public getVerificationURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    const/4 v0, 0x3

    .line 175
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 176
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 177
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    .line 178
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 179
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    if-nez v1, :cond_3

    :goto_3
    mul-int/lit8 v1, v2, 0x11

    add-int/2addr v0, v1

    .line 180
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 182
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_1

    .line 177
    :cond_2
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_2

    .line 179
    :cond_3
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v1}, Landroid/content/pm/ManifestDigest;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public setInstallerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 108
    iput p1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerificationParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mVerificationURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ",mOriginatingURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ",mReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ",mOriginatingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ",mManifestDigest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v1}, Landroid/content/pm/ManifestDigest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ",mInstallerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 210
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 211
    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mManifestDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 213
    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return-void
.end method
