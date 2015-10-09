.class public Landroid/location/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_FUSED_PROVIDER:I = 0x3

.field public static final MATCH_GPS_PROVIDER:I = 0x2

.field public static final MATCH_NETWORK_PROVIDER:I = 0x1

.field public static final MATCH_PASSIVE_PROVIDER:I = 0x4


# instance fields
.field public final mHighCost:Z

.field private final mMatchRule:I

.field public final mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Landroid/location/LocationPolicy$1;

    invoke-direct {v0}, Landroid/location/LocationPolicy$1;-><init>()V

    sput-object v0, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "matchRule"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "highcost"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 71
    iput-boolean p3, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 72
    iput-object p2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    .line 79
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/location/LocationPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/location/LocationPolicy$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/location/LocationPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildDefaultPolicyFusedLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x3

    const-string v2, "fused"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyGPSLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x2

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyNetworkLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 21
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x1

    const-string/jumbo v2, "network"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static buildDefaultPolicyPassiveLocation()Landroid/location/LocationPolicy;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x4

    const-string/jumbo v2, "passive"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/location/LocationPolicy;-><init>(ILjava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultPolicyByProvider(Ljava/lang/String;)Landroid/location/LocationPolicy;
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Landroid/location/LocationPolicy;->buildDefaultPolicyNetworkLocation()Landroid/location/LocationPolicy;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Landroid/location/LocationPolicy;->buildDefaultPolicyGPSLocation()Landroid/location/LocationPolicy;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {}, Landroid/location/LocationPolicy;->buildDefaultPolicyPassiveLocation()Landroid/location/LocationPolicy;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-static {}, Landroid/location/LocationPolicy;->buildDefaultPolicyFusedLocation()Landroid/location/LocationPolicy;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 1
    .param p0, "matchRule"    # I

    .prologue
    .line 138
    packed-switch p0, :pswitch_data_0

    .line 148
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    const-string v0, "NETWORK_PROVIDER"

    goto :goto_0

    .line 142
    :pswitch_1
    const-string v0, "GPS_PROVIDER"

    goto :goto_0

    .line 144
    :pswitch_2
    const-string v0, "FUSED_PROVIDER"

    goto :goto_0

    .line 146
    :pswitch_3
    const-string v0, "PASSIVE_PROVIDER"

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 109
    instance-of v2, p1, Landroid/location/LocationPolicy;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Landroid/location/LocationPolicy;

    .line 111
    .local v0, "other":Landroid/location/LocationPolicy;
    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    iget v3, v0, Landroid/location/LocationPolicy;->mMatchRule:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    iget-boolean v3, v0, Landroid/location/LocationPolicy;->mHighCost:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 115
    .end local v0    # "other":Landroid/location/LocationPolicy;
    :cond_0
    return v1
.end method

.method public getMatchRule()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "locationProvider"    # Ljava/lang/String;

    .prologue
    .line 123
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    packed-switch v0, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    const-string/jumbo v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 127
    :pswitch_1
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 129
    :pswitch_2
    const-string v0, "fused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 131
    :pswitch_3
    const-string/jumbo v0, "passive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationPolicy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-static {v2}, Landroid/location/LocationPolicy;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", highCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget v0, p0, Landroid/location/LocationPolicy;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean v0, p0, Landroid/location/LocationPolicy;->mHighCost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
