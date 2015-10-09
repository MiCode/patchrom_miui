.class public final Landroid/print/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BUSY:I = 0x2

.field public static final STATUS_IDLE:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x3


# instance fields
.field private mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private mDescription:Ljava/lang/String;

.field private mId:Landroid/print/PrinterId;

.field private mName:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Landroid/print/PrinterInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrinterInfo$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrinterInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/print/PrinterInfo$1;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/print/PrinterInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 0
    .param p1, "prototype"    # Landroid/print/PrinterInfo;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo;->copyFrom(Landroid/print/PrinterInfo;)V

    .line 58
    return-void
.end method

.method static synthetic access$102(Landroid/print/PrinterInfo;Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterInfo;
    .param p1, "x1"    # Landroid/print/PrinterId;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object p1
.end method

.method static synthetic access$202(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/print/PrinterInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterInfo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/print/PrinterInfo;->mStatus:I

    return p1
.end method

.method static synthetic access$402(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/print/PrinterInfo;Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterInfo;
    .param p1, "x1"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object p1
.end method


# virtual methods
.method public copyFrom(Landroid/print/PrinterInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/print/PrinterInfo;

    .prologue
    .line 64
    if-ne p0, p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p1, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 68
    iget-object v0, p1, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 69
    iget v0, p1, Landroid/print/PrinterInfo;->mStatus:I

    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 70
    iget-object v0, p1, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget-object v1, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    iget-object v1, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-direct {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/print/PrinterCapabilitiesInfo;)V

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 174
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 176
    check-cast v0, Landroid/print/PrinterInfo;

    .line 177
    .local v0, "other":Landroid/print/PrinterInfo;
    iget-object v3, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    if-nez v3, :cond_4

    .line 178
    iget-object v3, v0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    if-eqz v3, :cond_5

    move v1, v2

    .line 179
    goto :goto_0

    .line 181
    :cond_4
    iget-object v3, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v3, v4}, Landroid/print/PrinterId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 182
    goto :goto_0

    .line 184
    :cond_5
    iget-object v3, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 185
    goto :goto_0

    .line 187
    :cond_6
    iget v3, p0, Landroid/print/PrinterInfo;->mStatus:I

    iget v4, v0, Landroid/print/PrinterInfo;->mStatus:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 188
    goto :goto_0

    .line 190
    :cond_7
    iget-object v3, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 191
    goto :goto_0

    .line 193
    :cond_8
    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-nez v3, :cond_9

    .line 194
    iget-object v3, v0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v3, :cond_0

    move v1, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_9
    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v3, v4}, Landroid/print/PrinterCapabilitiesInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 198
    goto :goto_0
.end method

.method public getCapabilities()Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Landroid/print/PrinterId;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 155
    const/16 v0, 0x1f

    .line 156
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 157
    .local v1, "result":I
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v2}, Landroid/print/PrinterId;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 158
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v1, v4, v2

    .line 159
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/print/PrinterInfo;->mStatus:I

    add-int v1, v2, v4

    .line 160
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v1, v4, v2

    .line 161
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v4, :cond_0

    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v3}, Landroid/print/PrinterCapabilitiesInfo;->hashCode()I

    move-result v3

    :cond_0
    add-int v1, v2, v3

    .line 162
    return v1

    :cond_1
    move v2, v3

    .line 157
    goto :goto_0

    :cond_2
    move v2, v3

    .line 158
    goto :goto_1

    :cond_3
    move v2, v3

    .line 160
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 151
    return-void
.end method
