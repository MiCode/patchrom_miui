.class public Landroid/accounts/AuthenticatorDescription;
.super Ljava/lang/Object;
.source "AuthenticatorDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountPreferencesId:I

.field public final customTokens:Z

.field public final iconId:I

.field public final labelId:I

.field public final packageName:Ljava/lang/String;

.field public final smallIconId:I

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Landroid/accounts/AuthenticatorDescription$1;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorDescription$1;-><init>()V

    sput-object v0, Landroid/accounts/AuthenticatorDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/accounts/AuthenticatorDescription$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/accounts/AuthenticatorDescription$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/accounts/AuthenticatorDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 82
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 83
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 84
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 85
    iput v1, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 86
    iput-boolean v1, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I

    .prologue
    .line 66
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "labelId"    # I
    .param p4, "iconId"    # I
    .param p5, "smallIconId"    # I
    .param p6, "prefId"    # I
    .param p7, "customTokens"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 57
    iput p3, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 58
    iput p4, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 59
    iput p5, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    .line 60
    iput p6, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    .line 61
    iput-boolean p7, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 62
    return-void
.end method

.method public static newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    invoke-direct {v0, p0}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 111
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    .line 112
    :cond_0
    instance-of v1, p1, Landroid/accounts/AuthenticatorDescription;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 113
    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 114
    .local v0, "other":Landroid/accounts/AuthenticatorDescription;
    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticatorDescription {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-boolean v0, p0, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
