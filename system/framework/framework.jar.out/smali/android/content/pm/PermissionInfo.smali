.class public Landroid/content/pm/PermissionInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "PermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_COSTS_MONEY:I = 0x1

.field public static final PROTECTION_DANGEROUS:I = 0x1

.field public static final PROTECTION_FLAG_DEVELOPMENT:I = 0x20

.field public static final PROTECTION_FLAG_SYSTEM:I = 0x10

.field public static final PROTECTION_MASK_BASE:I = 0xf

.field public static final PROTECTION_MASK_FLAGS:I = 0xf0

.field public static final PROTECTION_NORMAL:I = 0x0

.field public static final PROTECTION_SIGNATURE:I = 0x2

.field public static final PROTECTION_SIGNATURE_OR_SYSTEM:I = 0x3


# instance fields
.field public descriptionRes:I

.field public flags:I

.field public group:Ljava/lang/String;

.field public nonLocalizedDescription:Ljava/lang/CharSequence;

.field public protectionLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Landroid/content/pm/PermissionInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 164
    iget v0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 165
    iget v0, p1, Landroid/content/pm/PermissionInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 166
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 167
    iget v0, p1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 168
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 230
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PermissionInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PermissionInfo$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fixProtectionLevel(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 127
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 128
    const/16 p0, 0x12

    .line 130
    :cond_0
    return p0
.end method

.method public static protectionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 135
    const-string v0, "????"

    .line 136
    .local v0, "protLevel":Ljava/lang/String;
    and-int/lit8 v1, p0, 0xf

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|development"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_1
    return-object v0

    .line 138
    :pswitch_0
    const-string v0, "dangerous"

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "normal"

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    const-string/jumbo v0, "signature"

    .line 145
    goto :goto_0

    .line 147
    :pswitch_3
    const-string/jumbo v0, "signatureOrSystem"

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v2, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 184
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    iget v2, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, v1

    .line 192
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

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
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget v0, p0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 212
    return-void
.end method
