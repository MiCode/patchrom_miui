.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider name contains illegal character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 65
    return-void
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p2, "criteria"    # Landroid/location/Criteria;

    .prologue
    const/4 v0, 0x0

    .line 87
    const-string/jumbo v1, "passive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    iget v2, p1, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    if-lt v1, v2, :cond_0

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    iget v2, p1, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    if-lt v1, v2, :cond_0

    .line 105
    :cond_3
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    if-eqz v1, :cond_0

    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    if-eqz v1, :cond_0

    .line 111
    :cond_5
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    if-eqz v1, :cond_0

    .line 114
    :cond_6
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p1, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    if-nez v1, :cond_0

    .line 117
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .param p1, "criteria"    # Landroid/location/Criteria;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v0

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    return v0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    return v0
.end method
