.class public Landroid/location/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdminArea:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFeatureName:Ljava/lang/String;

.field private mHasLatitude:Z

.field private mHasLongitude:Z

.field private mLatitude:D

.field private mLocale:Ljava/util/Locale;

.field private mLocality:Ljava/lang/String;

.field private mLongitude:D

.field private mMaxAddressLineIndex:I

.field private mPhone:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mPremises:Ljava/lang/String;

.field private mSubAdminArea:Ljava/lang/String;

.field private mSubLocality:Ljava/lang/String;

.field private mSubThoroughfare:Ljava/lang/String;

.field private mThoroughfare:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 475
    new-instance v0, Landroid/location/Address$1;

    invoke-direct {v0}, Landroid/location/Address$1;-><init>()V

    sput-object v0, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 53
    iput-boolean v1, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 54
    iput-boolean v1, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    .line 64
    iput-object p1, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/location/Address;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Landroid/location/Address;)I
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .prologue
    .line 34
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return v0
.end method

.method static synthetic access$1002(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/location/Address;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return p1
.end method

.method static synthetic access$1102(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/location/Address;)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/location/Address;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/location/Address;->mHasLatitude:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/location/Address;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # D

    .prologue
    .line 34
    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$1500(Landroid/location/Address;)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/location/Address;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/location/Address;->mHasLongitude:Z

    return p1
.end method

.method static synthetic access$1602(Landroid/location/Address;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # D

    .prologue
    .line 34
    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$1702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clearLatitude()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 322
    return-void
.end method

.method public clearLongitude()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 359
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddressLine(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 89
    if-gez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAdminArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v0, :cond_0

    .line 303
    iget-wide v0, p0, Landroid/location/Address;->mLatitude:D

    return-wide v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v0, :cond_0

    .line 340
    iget-wide v0, p0, Landroid/location/Address;->mLongitude:D

    return-wide v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getMaxAddressLineIndex()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPremises()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-object v0
.end method

.method public getSubAdminArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getSubThoroughfare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public getThoroughfare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return v0
.end method

.method public setAddressLine(ILjava/lang/String;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 102
    if-gez p1, :cond_0

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    .line 108
    :cond_1
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    if-nez p2, :cond_2

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 113
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, "i":Ljava/lang/Integer;
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    goto :goto_0

    .line 117
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 119
    :cond_3
    return-void
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminArea"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 418
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    .line 419
    return-void

    .line 418
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setFeatureName(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 313
    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 315
    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 350
    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 352
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setPremises(Ljava/lang/String;)V
    .locals 0
    .param p1, "premises"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setSubAdminArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "subAdminArea"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setSubLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "sublocality"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setSubThoroughfare(Ljava/lang/String;)V
    .locals 0
    .param p1, "subthoroughfare"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setThoroughfare(Ljava/lang/String;)V
    .locals 0
    .param p1, "thoroughfare"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5d

    const/16 v5, 0x22

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Address[addressLines=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    if-gt v0, v3, :cond_2

    .line 426
    if-lez v0, :cond_0

    .line 427
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 433
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 440
    .end local v1    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    const-string v3, ",feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v3, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v3, ",admin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget-object v3, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v3, ",sub-admin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v3, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v3, ",locality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v3, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v3, ",thoroughfare="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v3, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v3, ",postalCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v3, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v3, ",countryCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v3, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v3, ",countryName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v3, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v3, ",hasLatitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 459
    const-string v3, ",latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-wide v3, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 461
    const-string v3, ",hasLongitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    const-string v3, ",longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-wide v3, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 465
    const-string v3, ",phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v3, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v3, ",url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v3, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v3, ",extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v3, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 534
    iget-object v3, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v3, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 537
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    :cond_0
    iget-object v3, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v3, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v3, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v3, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v3, :cond_1

    .line 559
    iget-wide v6, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V

    .line 561
    :cond_1
    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v3, :cond_2

    .line 563
    iget-wide v3, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 565
    :cond_2
    iget-object v3, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 568
    return-void

    .line 539
    :cond_3
    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 540
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 542
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    move v3, v5

    .line 557
    goto :goto_0

    :cond_5
    move v4, v5

    .line 561
    goto :goto_1
.end method
