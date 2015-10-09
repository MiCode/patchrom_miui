.class public final Landroid/telephony/CellIdentityLte;
.super Ljava/lang/Object;
.source "CellIdentityLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityLte"


# instance fields
.field private final mCi:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPci:I

.field private final mTac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Landroid/telephony/CellIdentityLte$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    .line 47
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    .line 48
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 49
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 51
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "ci"    # I
    .param p4, "pci"    # I
    .param p5, "tac"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    .line 65
    iput p2, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    .line 66
    iput p3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 67
    iput p4, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 68
    iput p5, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityLte$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellIdentityLte$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityLte;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    .line 73
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    .line 74
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mCi:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    .line 75
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mPci:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    .line 76
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mTac:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    .line 77
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "CellIdentityLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityLte;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/telephony/CellIdentityLte;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentityLte;

    move-object v2, v0

    .line 130
    .local v2, "o":Landroid/telephony/CellIdentityLte;
    iget v4, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    iget v5, v2, Landroid/telephony/CellIdentityLte;->mMcc:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    iget v5, v2, Landroid/telephony/CellIdentityLte;->mMnc:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v5, v2, Landroid/telephony/CellIdentityLte;->mCi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v5, v2, Landroid/telephony/CellIdentityLte;->mCi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v5, v2, Landroid/telephony/CellIdentityLte;->mTac:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 139
    .end local v2    # "o":Landroid/telephony/CellIdentityLte;
    :cond_0
    :goto_0
    return v3

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getCi()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    return v0
.end method

.method public getPci()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    return v0
.end method

.method public getTac()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    const/16 v0, 0x1f

    .line 121
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityLte:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, " mPci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, " mTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 166
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void
.end method
